import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';

import 'login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();

  @override
  void dispose() {
    _passController.dispose();
    _confirmPassController.dispose();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            children: [
              const Text("Please enter your new password",
                style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 23
                )),
              const SizedBox(height: 20,),
              CustomTextField(
                  controller: _passController,
                  hintText: 'New Password',
                  keyBoardType: TextInputType.visiblePassword
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                  controller: _confirmPassController,
                  hintText: 'Confirm New Password',
                  keyBoardType: TextInputType.visiblePassword
              ),
              const SizedBox(height: 40),
              CustomButton(
                  name: 'Reset Password',
                  onTap: (){
                    Navigator.pushAndRemoveUntil(context, 
                        MaterialPageRoute(builder: (context) => const Login()), (route) => false);
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
