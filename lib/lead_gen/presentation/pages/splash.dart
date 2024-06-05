import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/pages/home.dart';

import '../../../injections.dart';
import '../../application/licence/licence_bloc.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    navigator();
    super.initState();
  }

  navigator() async{
    final checkIfUserExist = await AuthBloc.checkIfUserExist();

    if(checkIfUserExist==0){
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Login()),(route) => false,);
      });
    }else{
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => sl<LeadBloc>(),
            ),
            BlocProvider(
              create:  (context) => sl<LicenceBloc>(),
            )
          ],
          child: const Home(),
        )),(route) => false,);
      });
    }

  }

  @override
  Widget build(BuildContext context){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: width*0.8,
              height: height*0.17,
              child: Image.asset("assets/images/splash.png"),
            ),
            Text("Never miss a lead",style:
            GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }
}
