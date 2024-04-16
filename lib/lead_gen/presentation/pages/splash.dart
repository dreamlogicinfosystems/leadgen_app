import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/pages/home.dart';

import '../../../injections.dart';
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
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BlocProvider(
          create: (context) => sl<LeadBloc>(),
          child: const Home(),
        )),(route) => false,);
      });
    }

  }

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body:  Center(
          child:  Container(
            width: 200,
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: const Center(
              child: Text("Lead Gen",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600
              ),),
            ),
          )
      ),
    );
  }
}
