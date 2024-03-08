import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';

import '../../application/auth/auth_bloc.dart';
import 'login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Text("Please enter your new password",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 23
                  )),
                const SizedBox(height: 20,),
                CustomTextField(
                    controller: _passController,
                    labelText: 'New Password',
                    keyBoardType: TextInputType.visiblePassword,
                    obscureText: true,
                    maxLines: 1,
                    validator: (value) {
                      if (value == '' || value?.trim() == '') {
                        return 'Enter Password';
                      } else if (value!.contains(
                          RegExp(r'^[-~!@#$%^&*()_+-=;:{},./?><]'))) {
                        return 'Invalid Password';
                      } else if (value.length < 8) {
                        return 'Password must be atleast 8 character';
                      } else {
                        return null;
                      }
                    }
                ),
                const SizedBox(height: 20,),
                CustomTextField(
                    controller: _confirmPassController,
                    labelText: 'Confirm New Password',
                    keyBoardType: TextInputType.visiblePassword,
                    obscureText: true,
                    maxLines: 1,
                    validator: (value) {
                      if (value == '' || value?.trim() == '') {
                        return 'Enter Password';
                      } else if (value!.contains(
                          RegExp(r'^[-~!@#$%^&*()_+-=;:{},./?><]'))) {
                        return 'Invalid Password';
                      } else if (value.length < 8) {
                        return 'Password must be atleast 8 character';
                      } else {
                        return null;
                      }
                    }
                ),
                const SizedBox(height: 40),
                CustomButton(
                    name: 'Reset Password',
                    onTap: (){
                      if(_formKey.currentState!.validate()){
                        if(_passController.text.trim() == _confirmPassController.text.trim()){
                          context.read<AuthBloc>().add(AuthEvent.resetPassword(_passController.text, context));
                        }else{
                          showErrorToastMessage('Password do not match');
                        }
                      }
                    }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
