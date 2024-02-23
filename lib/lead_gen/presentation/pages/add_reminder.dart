import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';

class AddReminder extends StatefulWidget {
  const AddReminder({Key? key}) : super(key: key);

  @override
  State<AddReminder> createState() => _AddReminderState();
}

class _AddReminderState extends State<AddReminder> {
  final _messageController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  DateTime? pickedDate;
  final _formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    _messageController.dispose();
    _dateController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  Future<void> selectReminderDate() async{
    pickedDate = await ReminderBloc.selectReminderDate(context);

    debugPrint("data from bloc:$pickedDate");

    if(pickedDate!=null){
      _dateController.text = "${pickedDate!.day}-${pickedDate!.month}-${pickedDate!.year}";
    }
  }

  Future<void> selectReminderTime() async{
    final pickedTime = await ReminderBloc.selectReminderTime(context);

    debugPrint("time from bloc:$pickedTime");

    if(pickedTime!=''){
      _timeController.text = pickedTime!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
              title: 'Add Reminder',
              centerTitle: true,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const CircleAvatar(
                  maxRadius: 35,
                  child: Icon(Icons.alarm,size: 40,),
              ),
              const SizedBox(height: 15),
              CustomTextField(
                  controller: _messageController,
                  hintText: 'Message',
                  keyBoardType: TextInputType.text,
                  validator: (value){
                    if(value=='' || value!.trim()==''){
                      return 'Enter Message';
                    }else{
                      return null;
                    }
                  },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                      child: CustomTextField(
                          controller: _dateController,
                          hintText: 'Date',
                          keyBoardType: TextInputType.none,
                          readOnly: true,
                          onTap: selectReminderDate,
                          validator: (value){
                            if(value=='' || value!.trim()==''){
                              return 'Select Date';
                            }else{
                              return null;
                            }
                          },
                      ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                      child: CustomTextField(
                          controller: _timeController,
                          hintText: 'Time',
                          keyBoardType: TextInputType.none,
                          onTap: selectReminderTime,
                          readOnly: true,
                          validator: (value){
                            if(value=='' || value!.trim()==''){
                              return 'Select Time';
                            }else{
                              return null;
                            }
                          },
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              CustomButton(
                  name: 'Set Reminder',
                  onTap: () async{
                    if(_formKey.currentState!.validate()){
                      context.read<ReminderBloc>().add(ReminderEvent.setRemainder(
                          _messageController.text,
                          pickedDate!,
                          TimeOfDay.now()
                      ));
                    }
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
