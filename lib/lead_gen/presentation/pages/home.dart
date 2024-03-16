import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import '../../../injections.dart';
import '../widgets/home/departments_container.dart';
import '../widgets/home/home_body.dart';
import '../widgets/home/main_drawer.dart';
import 'add_lead.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFF0),
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
            shape: const CircleBorder(
                side: BorderSide(width: 0.2, color: Colors.white38)
            ),
            child: const Icon(Icons.add, size: 28,),
            onPressed: () {
              if (DepartmentBloc.getDepartmentCount() == 0) {
                simpleDialog(context);
              } else {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddLead()));
              }
            }
        ),
      ),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 1),
        child: CustomAppBar(
            iconColor: Colors.black,
            title: 'Home',
            centerTitle: true,
            automaticallyImplyLeading: true
        ),
      ),
      drawer: const Drawer(
        child: MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocProvider(
                create: (context) => sl<DepartmentBloc>(),
                child: const DepartmentsContainer(),
              ),
              const SizedBox(height: 10,),
              BlocProvider(
                create: (context) => sl<LeadBloc>(),
                child: const HomePageBody(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
