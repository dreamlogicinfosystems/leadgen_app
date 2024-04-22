import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import 'package:lead_gen/lead_gen/presentation/pages/home.dart';
import 'package:lead_gen/lead_gen/presentation/pages/register.dart';
import 'package:lead_gen/lead_gen/presentation/pages/verify_number.dart';

import '../../../injections.dart';
import '../../application/lead/lead_bloc.dart';
import '../../constants/constant.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  bool isRememberMe = false;

  @override
  void initState() {
    AuthBloc.getFcmTokenAndDevice();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.68,
              child: Image.asset('assets/images/Union.png',fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        success: (message){
                          showToastMessage(message!);
                          Navigator.pop(context);
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(builder: (context) => BlocProvider(
                                create: (context) => sl<LeadBloc>(),
                                child: const Home(),
                              )), (route) => false);
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
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          const SizedBox(height: 122,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 100,
                              width: 233,
                              child: Text("Sign in with password",style:
                              GoogleFonts.poppins(fontSize: 37,fontWeight: FontWeight.w500),),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Welcome back! please login to your account",style:
                            GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 13,color: const Color(0xFF727373)),),
                          ),
                          const SizedBox(height: 25,),
                          CustomTextField(
                            // isLogin: true,
                            // icon: Icons.mail,
                            controller: _emailController,
                            labelText: 'Email or Phone no',
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
                            // isLogin: true,
                            // icon: Icons.lock,
                            controller: _passwordController,
                            labelText: 'Password',
                            suffixIcon: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isObscureText = !isObscureText;
                                  });
                                },
                                child: isObscureText==true? const Icon(Icons.remove_red_eye_sharp,color: Colors.black):
                                const Icon(Icons.remove_red_eye_sharp,color: Colors.black)
                            ),
                            keyBoardType: TextInputType.visiblePassword,
                            obscureText: isObscureText,
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
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Transform.scale(
                                      scale: 1.2,
                                      child: Checkbox(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                          value: isRememberMe,
                                          onChanged: (value){
                                            setState(() {
                                              isRememberMe = value!;
                                            });
                                          }
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text('Remember me',style:
                                  GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: const Color(0xFF141516)),)
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyNumber()));
                                    },
                                    child: Text('Reset password',style:
                                    GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.blue),),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          CustomButton(
                            name: 'Login',
                            onTap: () async{
                              if(_formKey.currentState!.validate()){
                                context.read<AuthBloc>().add(AuthEvent.tryLogin(
                                    _emailController.text,
                                    _passwordController.text,
                                    context
                                ));
                              }
                            },
                          ),
                          const SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?",style: GoogleFonts.poppins(
                                  fontSize: 14,fontWeight: FontWeight.w500
                              ),),
                              const SizedBox(width: 5,),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
                                },
                                child: Text('Sign Up',style: GoogleFonts.poppins(
                                    fontSize: 14,color: Colors.blue,fontWeight: FontWeight.w500
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
            ),
          ),
        ],
      ),
    );
  }
}
