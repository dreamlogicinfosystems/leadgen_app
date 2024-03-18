import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import 'package:lead_gen/lead_gen/presentation/pages/otp_verification.dart';

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({Key? key}) : super(key: key);

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.68,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/Union.png',fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                    loadingInProgress: (){
                      showLoader(context);
                    },
                    failed: (error){
                      showErrorToastMessage(error!);
                      Navigator.pop(context);
                    },
                    success: (message){
                      showToastMessage(message!);
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpVerification()));
                    },
                    orElse: (){}
                );
              },
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 122),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.7,
                        height: 100,
                        child: Text("Forgot your password?",style:
                        GoogleFonts.poppins(fontSize: 35,fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: Text("No worries, you just need to enter your email address and we will send you a reset link.",style:
                      GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: const Color(0xFF727373)),),
                    ),
                    const SizedBox(height: 20,),
                    CustomTextField(
                      controller: _emailController,
                      labelText: 'Enter your email address',
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
                        }},
                    ),
                    const SizedBox(height: 30),
                    CustomButton(name: 'Send reset link', onTap: (){
                      if(_formKey.currentState!.validate()){
                        context.read<AuthBloc>().add(AuthEvent.verifyEmail(_emailController.text, context));
                      }
                    })
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
