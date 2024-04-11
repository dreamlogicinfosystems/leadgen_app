import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import 'package:lead_gen/lead_gen/presentation/pages/view_reminders.dart';

import '../../domain/reminder/reminder.dart';
import '../widgets/add_reminder/reminder_drop_down.dart';

class AddReminder extends StatefulWidget {
  final String userName;
  final String source;
  const AddReminder({Key? key, required this.userName, required this.source}) : super(key: key);

  @override
  State<AddReminder> createState() => _AddReminderState();
}

class _AddReminderState extends State<AddReminder> {
  final _titleController = TextEditingController();
  final _reminderDateTimeContr = TextEditingController();
  final _repeatCountController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  DateTime? pickedDate;
  String selectedInterval = '';
  bool isRepeat = false;

  @override
  void dispose() {
    _titleController.dispose();
    _reminderDateTimeContr.dispose();
    _repeatCountController.dispose();
    super.dispose();
  }

  Future<void> selectReminderDate() async{
    final pickedDate = await ReminderBloc.selectReminderDate(context);

    debugPrint("data from bloc:$pickedDate");

    if(pickedDate!=null){

      _reminderDateTimeContr.text = pickedDate;
    }
  }

  getSelectedInterval(String value){
    setState(() {
      selectedInterval = value;
    });
    if(selectedInterval=='Fixed'){
      isRepeat = false;
    }else{
      isRepeat = true;
    }
    debugPrint("Selected Interval: $selectedInterval");
  }


  @override
  Widget build(BuildContext context) {
    return BlocListener<ReminderBloc, ReminderState>(
      listener: (context, state) {
        state.maybeWhen(
          failed: (error){
            showErrorToastMessage(error);
            Navigator.pop(context);
          },
          loadingInProgress: (){
            showLoader(context);
          },
          saved: (message){
            showToastMessage(message);
            if(widget.source=='chat page'){
              //to close loader
              Navigator.pop(context);
              //to close dialog
              Navigator.pop(context);
            }else{
              //to close loader
              Navigator.pop(context);

              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => const ViewReminders()), (route) => route.isFirst);
            }
          },
          orElse: (){}
        );
      },
      // builder: (context, state) {
        child: Center(
          child: Card(
            color: Colors.white,
            child: SizedBox(
              width: MediaQuery.of(context).size.width*0.9,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 12),
                        child: Text("Add Reminder",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 12),
                        child: Text(widget.userName,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                      ),
                      const SizedBox(height: 40),
                      CustomTextField(
                          controller: _titleController,
                          labelText: 'Title',
                          keyBoardType: TextInputType.text,
                          validator: (value){
                            if(value=='' || value!.trim()==''){
                              return 'Enter title';
                            }else if(value.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>]'))){
                              return 'Invalid name';
                            }else{
                              return null;
                            }
                          },
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        controller: _reminderDateTimeContr,
                        labelText: 'Reminder Date / Time',
                        keyBoardType: TextInputType.text,
                        onTap: (){
                          selectReminderDate();
                        },
                        validator: (value){
                          if(value=='' || value!.trim()==''){
                            return 'Select Reminder Date / Time';
                          }else{
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 12),
                      RepeatIntervalDropDown(
                        labelText: 'Repeat Reminder',
                        items: const ['Fixed','Daily','Weekly','Monthly','Yearly'],
                        getSelectedValue: getSelectedInterval,
                        validator: (value){
                          if(value==null){
                            return 'Select repeat interval';
                          }else{
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 12),
                      Visibility(
                        visible: isRepeat,
                        child: CustomTextField(
                          controller: _repeatCountController,
                          labelText: 'Repeat count',
                          keyBoardType: TextInputType.number,
                          validator: (value){
                            if(value=='' || value!.trim()==''){
                              return 'Enter count';
                            }else if(value.contains(RegExp(r'[-,.]')) || value.contains(" ")){
                              return 'Invalid count';
                            }else{
                              return null;
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.5,
                          child: CustomButton(
                              name: 'Add Reminder',
                              isBoardAddPage: true,
                              onTap: (){
                                if(_formKey.currentState!.validate()){
                                  context.read<ReminderBloc>().add(
                                    ReminderEvent.addReminder(
                                      Reminder(
                                        message: _titleController.text.trim(),
                                        date: _reminderDateTimeContr.text.split(' ')[0],
                                        time: _reminderDateTimeContr.text.split('  ')[1],
                                        repeatInterval: selectedInterval,
                                        repeatCount: selectedInterval=='Fixed'? '0' : _repeatCountController.text,
                                      ),
                                      context
                                    ),
                                  );
                                }
                              }
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      // },
    );
  }
}
