import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/pages/add_department.dart';
import 'package:lead_gen/lead_gen/presentation/pages/add_user.dart';
import 'package:lead_gen/lead_gen/presentation/pages/home.dart';
import 'package:lead_gen/lead_gen/presentation/pages/login.dart';
import 'package:lead_gen/lead_gen/presentation/pages/profile.dart';
import 'package:lead_gen/lead_gen/presentation/pages/view_reminders.dart';

import '../../../../injections.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.inversePrimary,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.38,
            child: Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top:50,bottom: 20),
              child: Container(
                height: MediaQuery.of(context).size.height*0.26,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 110,
                        decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade300
                        ),
                        child: ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: BorderRadius.circular(70),
                            child: Image.asset('assets/images/profile.png'),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text("Savio",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                      const SizedBox(height: 5),
                      SizedBox(
                        height: 40,
                          width: 180,
                          child: CustomButton(name: 'Edit Profile', onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
                          }),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.purpleAccent.shade200,
            height: 2,
          ),
          const SizedBox(height: 15,),
          GestureDetector(
            onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Home()),(route) => false);
            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.78,
              height: MediaQuery.of(context).size.width*0.125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.inversePrimary,
                  border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
              ),
              child: const Center(child: Text("All Leads",style: TextStyle(fontSize: 16),)),
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Home()),(route) => false);
            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.78,
              height: MediaQuery.of(context).size.width*0.125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.inversePrimary,
                  border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
              ),
              child: const Center(child: Text("New Lead",style: TextStyle(fontSize: 16))),
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Home()),(route) => false);
            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.78,
              height: MediaQuery.of(context).size.width*0.125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.inversePrimary,
                  border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
              ),
              child: const Center(child: Text("Delayed Lead",style: TextStyle(fontSize: 16))),
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const ViewReminders()),(route) => route.isFirst);
            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.78,
              height: MediaQuery.of(context).size.width*0.125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.inversePrimary,
                  border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
              ),
              child: const Center(child: Text("Reminders",style: TextStyle(fontSize: 16))),
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BlocProvider(
                create: (context) => sl<DepartmentBloc>(),
                child: const AddDepartment(),
              )),(route) => route.isFirst);
            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.78,
              height: MediaQuery.of(context).size.width*0.125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.inversePrimary,
                  border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
              ),
              child: const Center(child: Text("Add Department",style: TextStyle(fontSize: 16))),
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const AddUser()),(route) => route.isFirst);
            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.78,
              height: MediaQuery.of(context).size.width*0.125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.inversePrimary,
                  border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
              ),
              child: const Center(child: Text("Add User",style: TextStyle(fontSize: 16))),
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              showAlertDialog(context);
            },
            child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                  failed: (error){
                    showErrorToastMessage(error!);
                  },
                  success: (success){
                    showToastMessage(success!);
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => const Login()), (route) => false);
                  },
                  orElse: (){}
              );
            },
              child: Container(
                width: MediaQuery.of(context).size.width*0.78,
                height: MediaQuery.of(context).size.width*0.125,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Theme.of(context).colorScheme.inversePrimary,
                    border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
                ),
                child: const Center(child: Text("Logout",style: TextStyle(fontSize: 16))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
