import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import 'package:lead_gen/lead_gen/presentation/pages/home.dart';

import '../../core/custom_button.dart';

class AddUserForm extends StatefulWidget {
  const AddUserForm({Key? key}) : super(key: key);

  @override
  State<AddUserForm> createState() => _AddUserFormState();
}

class _AddUserFormState extends State<AddUserForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isApp = false;
  bool isWeb = false;
  bool isMarketing = false;
  bool isSelected = false;
  List<String> dept = ['APP','WEB','MARKETING'];

  // @override
  // void initState() {
  //   context.read<DepartmentBloc>().add(DepartmentEvent.getDepartments(context));
  //   super.initState();
  // }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                  controller: _nameController,
                  hintText: 'Name',
                  keyBoardType: TextInputType.text
              ),
              const SizedBox(height: 20),
              CustomTextField(
                  controller: _phoneController,
                  hintText: 'Phone Number',
                  keyBoardType: TextInputType.number
              ),
              const SizedBox(height: 20),
              CustomTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  keyBoardType: TextInputType.emailAddress
              ),
              const SizedBox(height: 20),
              CustomTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  keyBoardType: TextInputType.emailAddress
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text("Departments",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
              ),
              // ListView.builder(
              //     itemCount: dept.length,
              //     shrinkWrap: true,
              //     itemBuilder: (context,index){
              //
              //       return Row(
              //         children: [
              //           Checkbox(
              //               value: isSelected,
              //               onChanged: (value){
              //                 setState(() {
              //                   isSelected = value!;
              //                 });
              //               }
              //           ),
              //           Text(dept[index],style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
              //         ],
              //       );
              //     }
              // ),
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
              const SizedBox(height: 100,),
              CustomButton(name: 'Add',onTap: (){
                if(_formKey.currentState!.validate()){
                  debugPrint("$isApp    $isWeb   $isMarketing");
                  if(isApp==false && isWeb==false && isMarketing==false){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Select atleast one department!")),
                    );
                  }else{
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => const Home()), (route) => false);
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
