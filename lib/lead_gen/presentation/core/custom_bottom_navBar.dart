import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/pages/add_reminder.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../injections.dart';
import '../../application/department/department_bloc.dart';
import '../../application/lead/lead_bloc.dart';
import '../../constants/constant.dart';
import '../../domain/lead/lead.dart';
import '../pages/add_lead.dart';
import 'custom_button.dart';

class CustomBottomNavBar extends StatefulWidget {
  final bool? isHomePage;
  final String title;
  final Source? sourcePage;
  const CustomBottomNavBar({super.key, this.isHomePage, required this.title, this.sourcePage});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  String message = "";
  bool isSpeaking = false;
  bool _speechEnabled = false;
  final SpeechToText _speechToText = SpeechToText();

  @override
  void dispose() {
    _speechToText.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.08,
      decoration: BoxDecoration(
          color: const Color(0xFFF6F6F6),
          border: Border.all(
              color: const Color(0xFF8E8E93),
              width: 0.5
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.isHomePage == true ? [
          addLeadBtnView(context),
          const SizedBox(width: 10),
          micView()
        ] : [
          ///add reminder btn
          addReminderBtnView(context)
        ],
      ),
    );
  }

  Widget addLeadBtnView(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(left: 40),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width*0.5,
          height: 45,
          child: CustomButton(
            isHomePage: true,
            isBoardAddPage: true,
            name: widget.title,
            onTap: () {
              ///add lead btn
              showDialog(context: context, builder: (context) => MultiBlocProvider(
                  providers: [
                    BlocProvider (
                      create: (BuildContext context) => sl<DepartmentBloc>(),
                    ),
                    BlocProvider (
                      create: (BuildContext context) => sl<LeadBloc>(),
                    )
                  ],
                  child: AddLead(sourcePage: widget.sourcePage!))
              );
            },
          ),
        ),
      ),
    );
  }

  Widget addReminderBtnView(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.5,
        height: 45,
        child: CustomButton(
          isHomePage: true,
          isBoardAddPage: true,
          name: widget.title,
          onTap: () {
            showDialog(context: context, builder: (context) => BlocProvider(
              create: (context) => sl<ReminderBloc>(),
              child: const AddReminder(userName: '',source: 'reminder page'),
            ));
          },
        ),
      ),
    );
  }

  Future<PermissionStatus>requestMicPermission() async {
    return await Permission.microphone.request().then((value) async {
      return value;
    });
  }

  Widget micView() {
    return GestureDetector(
      onTap: () async {
        await requestMicPermission().then((value) async {
          if(value == PermissionStatus.granted) {
            if(mounted) {
              await showAddLeadWithVoiceDialog();
            }
          } else if(value == PermissionStatus.denied){
            await requestMicPermission();
          } else if(value == PermissionStatus.permanentlyDenied) {
            await openAppSettings();
          }
        });
      },
      child: Container(
        width: 40, height: 40,
        decoration: BoxDecoration(
            color: Color(0xFFC2E90B),
            shape: BoxShape.circle
        ),
        child: Center(child: Icon(Icons.mic)),
      ),
    );
  }

  /// This has to happen only once per app
  Future<void> _initSpeech(void Function(void Function()) setState) async {
    _speechEnabled = await _speechToText.initialize(onStatus: (value) async {
      if(value == "notListening") {
        if(mounted) {
          setState(() => isSpeaking = false);
        }
      } else if(value == "done") {
        await processText(message);
      }
      debugPrint("init value: $value");
    });
    setState(() {});
  }

  /// Each time to start a speech recognition session
  Future<void> _startListening(void Function(void Function()) setState) async {
    setState(() => isSpeaking = true);
    await _speechToText.listen(onResult: (SpeechRecognitionResult result) async {
      setState(() {
        message = result.recognizedWords;
      });
    });
  }

  /// Manually stop the active speech recognition session
  Future<void> _stopListening(void Function(void Function()) setState) async {
    await _speechToText.stop();
    setState(() {});
    isSpeaking = false;
  }

  processText(String text) async {
    if(mounted) {
      setState(() {
        isSpeaking = false;
      });
    }

    String prefix = "remind me to";
    if(text.contains(prefix)) {
      ///get the remaining text after prefix
      String remainingText = text.substring(prefix.length).trim();

      debugPrint("remaining text: $remainingText");

      String preposition = "with";
      ///check if text contains with
      if(remainingText.contains(preposition)) {
        String name = remainingText.split("with ").last.trim();

        debugPrint("user name again: $name");

        String taskMessage = remainingText.replaceAll(name, "");

        String task = removeLastWord(taskMessage.trim());

        debugPrint("task name: $task");

        await Future.delayed(Duration(milliseconds: 500), () async {
          if(mounted) {
            //close voice
            Navigator.pop(context);

            Lead lead = Lead(
                name: name,
                message: task,
                title: task
            );
            await showDialog(context: context, builder: (context) => MultiBlocProvider(
                providers: [
                  BlocProvider (
                    create: (BuildContext context) => sl<DepartmentBloc>(),
                  ),
                  BlocProvider (
                    create: (BuildContext context) => sl<LeadBloc>(),
                  )
                ],
                child: AddLead(sourcePage: widget.sourcePage!,lead: lead)));
          }
        });
      } else {
        //check the length of text
        final textList = remainingText.split(" ");

        if(textList.length == 2) {
          String name = textList[1];

          debugPrint("user name: $name");

          String task = textList[0];

          debugPrint("task name: $task");

          await Future.delayed(Duration(milliseconds: 500), () async {
            if(mounted) {
              //close voice
              Navigator.pop(context);

              Lead lead = Lead(
                  name: name,
                  message: task,
                  title: task
              );
              await showDialog(context: context, builder: (context) => MultiBlocProvider(
                  providers: [
                    BlocProvider (
                      create: (BuildContext context) => sl<DepartmentBloc>(),
                    ),
                    BlocProvider (
                      create: (BuildContext context) => sl<LeadBloc>(),
                    )
                  ],
                  child: AddLead(sourcePage: widget.sourcePage!,lead: lead)));
            }
          });
        }
      }
    }
  }

  String removeLastWord(String text) {
    List<String> words =  text.split(" ");

    if(words.last.trim() == "with") {
      words.removeLast();
    }

    return words.join(" ");
  }

  Future<dynamic> showAddLeadWithVoiceDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
             builder: (context, setState) {
               return Dialog(
                 shape: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide.none
                 ),
                 child: Padding(
                   padding: const EdgeInsets.fromLTRB(10, 12, 10, 15),
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Text("Add Lead",style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w500)),
                       const SizedBox(height: 20),
                       Stack(
                         alignment: Alignment.center,
                         children: [
                           Visibility(
                             visible: isSpeaking ? true : false,
                             child: Container(
                               width: 115,
                               height: 115,
                               decoration: BoxDecoration(
                                   color: Colors.black.withOpacity(0.5),
                                   shape: BoxShape.circle
                               ),
                             ),
                           ),
                           GestureDetector(
                             onTap: () async {
                               debugPrint("tapped");
                               await _initSpeech(setState);
                               if(_speechEnabled) {
                                 await _startListening(setState);
                               } else {
                                 await _stopListening(setState);
                               }
                             },
                             child: Container(
                               width: 100,
                               height: 100,
                               decoration: BoxDecoration(
                                   color: Colors.grey,
                                   shape: BoxShape.circle
                               ),
                               child: Center(
                                 child: isSpeaking ? Icon(Icons.mic,size: 40) : Icon(Icons.mic_off,size: 40),
                               ),
                             ),
                           ),
                         ],
                       ),
                       const SizedBox(height: 20),
                       Text(message.isEmpty ? "Press and Speak" : message,
                           textAlign: TextAlign.center,
                           style: GoogleFonts.poppins(fontSize: 15)
                       )
                     ],
                   ),
                 ),
               );
             }
          );

        }
     );
  }
}
