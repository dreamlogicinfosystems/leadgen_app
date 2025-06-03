import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/application/maintenance/maintenance_bloc.dart';
import 'package:lead_gen/lead_gen/constants/shared_preference.dart';
import 'package:lead_gen/lead_gen/presentation/pages/home.dart';
import 'package:lead_gen/lead_gen/presentation/pages/maintenance_popup.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../injections.dart';
import '../../application/licence/licence_bloc.dart';
import '../../constants/shared_preference.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _localDataSource = sl<LocalDataSource>();
  int? checkIfUserExist;

  @override
  void initState() {
    context.read<MaintenanceBloc>().add(MaintenanceEvent.checkMaintenance(context));
    checkUserCount();
    super.initState();
  }

  checkUserCount() async {
    if(kIsWeb) {
      checkIfUserExist = await _localDataSource.getUserExistWeb() ?? 0;
      setState(() {});
    } else {
      //if platform is mobile
      checkIfUserExist = await AuthBloc.checkIfUserExist();
      setState(() {});
    }
  }

  navigate() {
    if(checkIfUserExist == 0) {
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Login()),(route) => false,);
      });
    } else {
      Future.delayed(const Duration(seconds: 1), () {
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
      body: BlocListener<MaintenanceBloc,MaintenanceState>(
        listener: (context, state) {
          state.maybeWhen(
            failure: (error) {
              navigate();
            },
            success: (maintenance) async{
              final packageInfo = await PackageInfo.fromPlatform();

              final buildNumber = packageInfo.buildNumber;

              //if platform is mobile
              if(!kIsWeb) {
                if(Platform.isAndroid) {
                  if(int.parse(buildNumber)<maintenance.minAndroidVersion!){
                    if(context.mounted) {
                      showDialog(context: context, barrierDismissible: maintenance.isCompulsory==1? false: true,builder: (context) =>
                          MaintenancePopUpDialog(maintenanceInfo: maintenance)).then((value){
                        if(maintenance.isCompulsory==0){
                          navigate();
                        }
                      });
                    }
                  } else {
                    navigate();
                  }
                } else if(Platform.isIOS) {
                  if(int.parse(buildNumber)<maintenance.minIosVersion!){
                    if(context.mounted) {
                      showDialog(context: context, barrierDismissible: maintenance.isCompulsory==1? false: true,builder: (context) =>
                          MaintenancePopUpDialog(maintenanceInfo: maintenance)).then((value){
                        if(maintenance.isCompulsory==0){
                          navigate();
                        }
                      });
                    }
                  } else {
                    navigate();
                  }
                }
              } else {
                //web
                navigate();
              }
            },
            orElse: (){}
          );
        },
        child: SizedBox(
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
      ),
    );
  }
}
