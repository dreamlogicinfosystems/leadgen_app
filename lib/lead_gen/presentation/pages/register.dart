import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import 'package:lead_gen/lead_gen/presentation/pages/login.dart';

import '../../constants/constant.dart';
import '../../domain/auth/user.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _businessController = TextEditingController();
  final _passswordController = TextEditingController();
  final _confirmPassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String registeredAs = '';
  bool isBusiness = false;

  getRegisterAs(String value){
    setState(() {
      registeredAs = value;
    });
    if(registeredAs=='Business'){
      isBusiness = true;
    }else{
      isBusiness = false;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _businessController.dispose();
    _passswordController.dispose();
    _confirmPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                  success: (message){
                    showToastMessage(message!);
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(context, 
                        MaterialPageRoute(builder: (context) => const Login()), (route) => false);
                  },
                  failed: (error){
                    showErrorToastMessage(error!);
                    Navigator.pop(context);
                  },
                  loadingInProgress: (){
                    showLoader(context);
                  },
                  orElse: (){}
              );
            },
            builder: (context, state) {
              return Form(
                      key: _formKey,
                      child: state.maybeWhen(
                          orElse: (){
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 50,),
                                const Text("We're happy to see you",
                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 25,),
                                CustomTextField(
                                  controller: _nameController,
                                  hintText: 'Name',
                                  keyBoardType: TextInputType.text,
                                  validator: (value){
                                    if(value=='' || value?.trim()==''){
                                      return 'Enter name';
                                    }else if(value!.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>]'))){
                                      return 'Invalid name';
                                    }else if(value.length>20){
                                      return "Name cannot exceed 20 letter's";
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
                                    if(value=='' || value?.trim()==''){
                                      return 'Enter Email Address';
                                    }else if(!EmailValidator.validate(value!)){
                                      return "Invalid Email";
                                    }else if(value.contains(RegExp(r'^[-~!@#$%^&*()_+-=;:{},./?><]'))){
                                      return 'Invalid Email';
                                    }else{
                                      return null;
                                    }
                                  },
                                ),
                                const SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        controller: _phoneController,
                                        hintText: 'Phone Number',
                                        keyBoardType: TextInputType.number,
                                        maxLines: 1,
                                        validator: (value){
                                          if(value=='' || value?.trim()==''){
                                            return 'Enter Phone Number';
                                          }else if(value!.contains(RegExp(r'[-.,]')) || value.contains(' ')){
                                            return 'Invalid Phone Number';
                                          }else if(value.length>10 || value.length<10){
                                            return 'Phone number should be of 10 digit';
                                          }else{
                                            return null;
                                          }
                                        },
                                      ),
                                    ),
                                    // const SizedBox(width: 10),
                                    // Expanded(
                                    //   child: CustomDropDown(
                                    //       items: const ['Individual','Business'],
                                    //       getSelectedValue: getRegisterAs,
                                    //       hintText: 'Registered as',
                                    //       validator: (value){
                                    //         print("drop down value: $value");
                                    //         if(value==null){
                                    //           return "Select Registered as";
                                    //         }
                                    //       },
                                    //     ),
                                    // ),
                                  ],
                                ),
                                isBusiness==true? const SizedBox(height: 20) : const SizedBox(height: 0),
                                Visibility(
                                  visible: isBusiness,
                                  child: CustomTextField(
                                    controller: _businessController,
                                    hintText: 'Business Name',
                                    keyBoardType: TextInputType.text,
                                    validator: (value){
                                      if(value=='' || value?.trim()==''){
                                        return 'Enter Business Name';
                                      }else{
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                CustomTextField(
                                  controller: _passswordController,
                                  hintText: 'Password',
                                  keyBoardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  maxLines: 1,
                                  validator: (value){
                                    if(value=='' || value?.trim()==''){
                                      return 'Enter Password';
                                    }else if(value!.contains(RegExp(r'^[-~!@#$%^&*()_+-=;:{},./?><]'))){
                                      return 'Invalid Password';
                                    }else if(value.length<8){
                                      return 'Password must be atleast 8 character';
                                    }else{
                                      return null;
                                    }
                                  },
                                ),
                                const SizedBox(height: 20,),
                                CustomTextField(
                                  controller: _confirmPassController,
                                  hintText: 'Confirm Password',
                                  keyBoardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  maxLines: 1,
                                  validator: (value){
                                    if(value=='' || value?.trim()==''){
                                      return 'Enter Confirm Password';
                                    }else if(value!.contains(RegExp(r'^[-~!@#$%^&*()_+-=;:{},./?><]'))){
                                      return 'Invalid Password';
                                    }else if(value.length<8){
                                      return 'Password must be atleast 8 character';
                                    }else{
                                      return null;
                                    }
                                  },
                                ),
                                isBusiness==false? const SizedBox(height: 230) : const SizedBox(height: 155),
                                CustomButton(name: 'Register', onTap: () {
                                  if(_formKey.currentState!.validate()){
                                    if(_passswordController.text == _confirmPassController.text){
                                      context.read<AuthBloc>().add(
                                        AuthEvent.registerUser(
                                            User(
                                                name: _nameController.text,
                                                phoneNumber: _phoneController.text,
                                                email: _emailController.text,
                                                password: _passswordController.text,
                                                confirmPass: _confirmPassController.text
                                            ),
                                            context),
                                      );
                                    }else{
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(content: Text('Password do not match'),backgroundColor: Colors.red,)
                                      );
                                    }
                                  }
                                },),
                                const SizedBox(height: 25,),
                              ],
                            );
                          }
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
