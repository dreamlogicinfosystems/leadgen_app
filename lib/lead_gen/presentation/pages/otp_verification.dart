import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import 'package:lead_gen/lead_gen/presentation/pages/forgot_password.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
              title: '',
              centerTitle: true,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Column(
            children: [
              const Text("Please enter OTP sent to your registered number",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600
                  )),
              const SizedBox(height: 25),
              CustomTextField(
                  controller: _otpController,
                  hintText: 'OTP',
                  keyBoardType: TextInputType.number,
                  maxLength: 6,
              ),
              const SizedBox(height: 25),
              CustomButton(
                  name: 'Verify OTP',
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPassword()));
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
