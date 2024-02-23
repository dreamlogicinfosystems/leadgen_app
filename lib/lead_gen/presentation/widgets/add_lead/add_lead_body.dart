import 'package:flutter/material.dart';

import '../../core/custom_button.dart';
import '../../core/custom_textfield.dart';

class AddLeadBody extends StatefulWidget {
  const AddLeadBody({Key? key}) : super(key: key);

  @override
  State<AddLeadBody> createState() => _AddLeadBodyState();
}

class _AddLeadBodyState extends State<AddLeadBody> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  final _dateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isApp = false;
  bool isWeb = false;
  bool isMarketing = false;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _dateController.text = "${DateTime.now().day.toString()}-${DateTime.now().month.toString()}-${DateTime.now().year.toString()}";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                controller: _nameController,
                hintText: 'Full Name',
                keyBoardType: TextInputType.text,
                validator: (value){
                  if(value=='' || value!.trim()==''){
                    return 'Enter Full Name';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                controller: _phoneController,
                hintText: 'Phone Number',
                keyBoardType: TextInputType.number,
                validator: (value){
                  if(value=='' || value!.trim()==''){
                    return 'Enter Phone Number';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                controller: _emailController,
                hintText: 'Email',
                keyBoardType: TextInputType.emailAddress,
                validator: (value){
                  if(value=='' || value!.trim()==''){
                    return 'Enter Email Address';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                controller: _messageController,
                hintText: 'Message',
                maxLines: 4,
                keyBoardType: TextInputType.text,
                validator: (value){
                  if(value=='' || value!.trim()==''){
                    return 'Enter Message';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                  controller: _dateController,
                  hintText: 'Date',
                  readOnly: true,
                  keyBoardType: TextInputType.none
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text("Departments",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
              ),
              Row(
                children: [
                  Checkbox(
                      value: isApp,
                      onChanged: (value){
                        setState(() {
                          isApp = value!;
                        });
                      }
                  ),
                  const Text("App",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: isWeb,
                      onChanged: (value){
                        setState(() {
                          isWeb = value!;
                        });
                      }
                  ),
                  const Text("Web",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: isMarketing,
                      onChanged: (value){
                        setState(() {
                          isMarketing = value!;
                        });
                      }
                  ),
                  const Text("Marketing",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                ],
              ),
              const SizedBox(height: 20,),
              CustomButton(name: 'Add',onTap: (){
                if(_formKey.currentState!.validate()){
                  debugPrint("$isApp    $isWeb   $isMarketing");
                  if(isApp==false && isWeb==false && isMarketing==false){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Select atleast one department!")),
                    );
                  }else{
                    Navigator.pop(context);
                  }
                }else{
                  debugPrint("not validate");
                }
              },)
            ],
          ),
        ),
      ),
    );
  }
}
