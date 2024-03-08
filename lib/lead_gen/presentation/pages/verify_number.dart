import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
              title: 'Forgot Password',
              centerTitle: false,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
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
              const Text("Enter your Registered Email Address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              const SizedBox(height: 20,),
              CustomTextField(
                controller: _emailController,
                labelText: 'Email',
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
              const SizedBox(height: 45,),
              CustomButton(name: 'Send OTP', onTap: (){
                if(_formKey.currentState!.validate()){
                  context.read<AuthBloc>().add(AuthEvent.verifyEmail(_emailController.text, context));
                }
              })
            ],
          ),
        ),
      ),
      ),
    );
  }
}
