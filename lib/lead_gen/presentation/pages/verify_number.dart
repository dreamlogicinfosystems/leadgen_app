import 'package:flutter/material.dart';
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
  final _phoneNoController = TextEditingController();

  @override
  void dispose() {
    _phoneNoController.dispose();
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Enter your Registered Phone Number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            const SizedBox(height: 20,),
            CustomTextField(
                controller: _phoneNoController,
                hintText: 'Phone Number',
                keyBoardType: TextInputType.number,
                maxLength: 10,
            ),
            const SizedBox(height: 25,),
            CustomButton(name: 'Send OTP', onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpVerification()));
            })
          ],
        ),
      ),
    );
  }
}
