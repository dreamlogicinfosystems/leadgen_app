import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/chat/bottom_sheet.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/chat/chat_header.dart';
import '../../constants/constant.dart';
import '../../domain/lead/chat_details.dart';
import '../../domain/lead/lead.dart';
import '../core/custom_appbar.dart';
import '../core/custom_textfield.dart';
import '../widgets/chat/chat_drawer.dart';

class Chat extends StatefulWidget {
  final Lead lead;
  const Chat({Key? key, required this.lead}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final _scroll = ScrollController(initialScrollOffset: 0.0,keepScrollOffset: true);
  final _messageController = TextEditingController();
  bool isMessage = false;
  List<String> messages = [
    'Requires  a software',
    'Requires  a software by tomorrow',
    'Requires  a software',
    'Requires  a software by tomorrow',
    'Requires  a software',
    'Requires  a software by tomorrow',
    'Requires  a software',
    'Requires  a software by tomorrow',
    'Requires  a software',
    'Requires  a software by tomorrow',
    'Requires  a software',
    'Requires  a software by tomorrow',
  ];

  @override
  void dispose() {
    _messageController.dispose();
    _scroll.dispose();
    super.dispose();
  }

  @override
  void initState() {
    context.read<LeadBloc>().add(LeadEvent.getLeadChat(1, context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFF0),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
              title: widget.lead.name!,
              centerTitle: true,
              isChatPage: true,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          ),
      ),
      drawer: const Drawer(
        child: ChatDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChatHeaderCard(lead: widget.lead),
            const SizedBox(height: 10),
            BlocBuilder<LeadBloc, LeadState>(
              builder: (context, state) {
                return state.maybeWhen(
                  successChatList: (chatList){
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              top: BorderSide(
                                  color: Colors.grey.shade300,
                                  width: 1
                              )
                          )
                      ),
                      height: MediaQuery.of(context).size.height*0.62,
                      child: ListView.builder(
                          itemCount: chatList.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context,int index){
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                              child: Column(
                                children: [
                                  Container(
                                    width: 105,
                                    height: 22,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFDDDDE9),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Center(child: Text(chatList[index].date!,style:
                                    GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: const Color(0xFF3C3C43)),)),
                                  ),
                                  const SizedBox(height: 10),
                                  ChatDetailsDisplayer(chatDetails: chatList[index].chatData!,)
                                ],
                              ),
                            );
                          }
                      ),
                    );
                  },
                  orElse: (){
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              top: BorderSide(
                                  color: Colors.grey.shade300,
                                  width: 1
                              )
                          )
                      ),
                      height: MediaQuery.of(context).size.height*0.62,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                );
              },
            ),
            Container(
              decoration: const BoxDecoration(
                // color: Colors.red,
                color: Color(0xFFF6F6F6),
                border: Border(
                  top: BorderSide(
                    color: Color(0xFF8E8E93),
                    width: 0.5
                  )
                )
              ),
              height: MediaQuery.of(context).size.height*0.085,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap:(){
                        displayBottomSheet(context);
                      },
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height*0.04,
                        width: 30,
                        child: const Icon(Icons.add,color: Colors.blue,size: 25,),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      height: 40,
                      child: CustomTextField(
                        controller: _messageController,
                        hintText: '',
                        maxLines: 1,
                        keyBoardType: TextInputType.text,
                        isChatPage: true,
                        onChanged: (value){
                          if(value!='' || value.trim()!=''){
                            setState(() {
                              isMessage = true;
                            });
                          }else{
                            setState(() {
                              isMessage = false;
                            });
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.04,
                      width: 25,
                      child: Image.asset("assets/images/Camera.png"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                      width: 25,
                      child: Image.asset("assets/images/Record Audio.png"),
                    ),
                    // isMessage==false? const Icon(Icons.send,size: 35,color: Colors.grey) :
                    // GestureDetector(
                    //     onTap: (){
                    //       setState(() {});
                    //       messages.add(_messageController.text);
                    //       _messageController.clear();
                    //             _scroll.animateTo(
                    //                 _scroll.position.maxScrollExtent+500.0,
                    //                 duration: const Duration(milliseconds: 100),
                    //                 curve: Curves.easeIn
                    //             );
                    //     },
                    //     child: const Icon(Icons.send,size: 35),
                    // ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10)
            // const SendMessageBox()
          ],
        ),
      ),
    );
  }
}


class ChatDetailsDisplayer extends StatefulWidget {
  final List<ChatDetails> chatDetails;
  const ChatDetailsDisplayer({super.key, required this.chatDetails});

  @override
  State<ChatDetailsDisplayer> createState() => _ChatDetailsDisplayerState();
}

class _ChatDetailsDisplayerState extends State<ChatDetailsDisplayer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.chatDetails.length,
      itemBuilder: (BuildContext context, int index) {
        return Align(
          alignment:Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFDCF7C5),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(widget.chatDetails[index].message!,style:
                    GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                    Text("${convertUTCtoLocalTime(widget.chatDetails[index].createdAt!)} by You",style:
                    GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

