import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import 'package:lead_gen/lead_gen/presentation/pages/home.dart';
import 'package:lead_gen/lead_gen/presentation/pages/register.dart';
import 'package:lead_gen/lead_gen/presentation/pages/verify_number.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 190,),
                  const Text("Welcome Back!",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),),
                  const SizedBox(height: 40,),
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
                  const SizedBox(height: 30,),
                  CustomTextField(
                      controller: _passwordController,
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
                  const SizedBox(height: 40,),
                  CustomButton(
                      name: 'Login',
                      onTap: (){
                        if(_formKey.currentState!.validate()){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Home()),(route) => false);
                        }
                      },
                  ),
                  const SizedBox(height: 60,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyNumber()));
                    },
                    child: const Text('Forgot Password?',style: TextStyle(
                        fontSize: 16,color: Colors.green,fontWeight: FontWeight.w500),),
                  ),
                  const SizedBox(height: 30,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?",style: TextStyle(
                          fontSize: 16.5,fontWeight: FontWeight.w500
                      ),),
                      const SizedBox(width: 5,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
                        },
                        child: const Text('Register',style: TextStyle(
                            fontSize: 16.5,color: Colors.green,fontWeight: FontWeight.w500
                        ),),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
