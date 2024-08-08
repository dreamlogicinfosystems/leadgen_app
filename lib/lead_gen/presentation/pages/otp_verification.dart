import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
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
    return PopScope(
      canPop: false,
      child: Scaffold(
        // appBar: const PreferredSize(
        //   preferredSize: Size.fromHeight(kToolbarHeight * 1),
        //   child: CustomAppBar(
        //       title: '',
        //       centerTitle: true,
        //       automaticallyImplyLeading: true,
        //       iconColor: Colors.black
        //   ),
        // ),
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
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPassword()));
                        },
                        orElse: (){}
                    );
                  },
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top:110),
                        child: Text("Please enter OTP sent to your registered number",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600
                            )),
                      ),
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
                          onTap: () {
                            if (_otpController.text.trim() == '' || _otpController.text == '') {
                              showErrorToastMessage('Please enter OTP');
                            }else if(_otpController.text.contains(RegExp(r'[-.,]'))){
                              showErrorToastMessage('Invalid OTP');
                            }else if(_otpController.text.length<6){
                              showErrorToastMessage('Invalid OTP');
                            }else {
                              context.read<AuthBloc>().add(AuthEvent.verifyOtp(_otpController.text, context));
                            }
                          }
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
