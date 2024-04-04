import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';

import '../widgets/add_reminder/reminder_drop_down.dart';

class AddReminder extends StatefulWidget {
  final String userName;
  const AddReminder({Key? key, required this.userName}) : super(key: key);

  @override
  State<AddReminder> createState() => _AddReminderState();
}

class _AddReminderState extends State<AddReminder> {
  final _titleController = TextEditingController();
  final _reminderDateTimeContr = TextEditingController();
  final _repeatController = TextEditingController();
  DateTime? pickedDate;
  String selectedInterval = '';

  @override
  void dispose() {
    _titleController.dispose();
    _reminderDateTimeContr.dispose();
    _repeatController.dispose();
    super.dispose();
  }

  Future<void> selectReminderDate() async{
    pickedDate = await ReminderBloc.selectReminderDate(context);

    debugPrint("data from bloc:$pickedDate");

    if(pickedDate!=null){
      _reminderDateTimeContr.text = "${pickedDate!.day}-${pickedDate!.month}-${pickedDate!.year}";
    }
  }

  Future<void> selectReminderTime() async{
    final pickedTime = await ReminderBloc.selectReminderTime(context);

    debugPrint("time from bloc:$pickedTime");

    if(pickedTime!=''){
      _repeatController.text = pickedTime!;
    }
  }

  getSelectedInterval(String value){
    setState(() {
      selectedInterval = value;
    });
    debugPrint("Selected Interval: $selectedInterval");
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        child: SizedBox(
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.55,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
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
                      }else{
                        return null;
                      }
                    },
                ),
                const SizedBox(height: 12),
                CustomTextField(
                  controller: _titleController,
                  labelText: 'Reminder Date / Time',
                  keyBoardType: TextInputType.text,
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
                  items: const ['Daily','Weekly','Monthly','Yearly'],
                  getSelectedValue: getSelectedInterval,
                ),
                const SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: CustomButton(
                        name: 'Add Reminder',
                        isBoardAddPage: true,
                        onTap: (){
                          showToastMessage("Reminder has been set!");
                          Future.delayed(const Duration(seconds: 1),(){
                            Navigator.pop(context);
                            Navigator.pop(context);
                          });
                        }
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
