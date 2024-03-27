import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/pages/add_lead.dart';
import '../../../injections.dart';
import '../widgets/home/departments_container.dart';
import '../widgets/home/home_body.dart';
import '../widgets/home/leads_count_container.dart';
import '../widgets/home/main_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  VoidCallback? refreshPage;

  @override
  void initState() {
    refreshPage=(){
      setState(() {});
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFF0),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 1),
        child: CustomAppBar(
            iconColor: Colors.black,
            title: 'Dashboard',
            isMainPage: true,
            centerTitle: true,
            automaticallyImplyLeading: true
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.08,
        decoration: BoxDecoration(
          color: const Color(0xFFF6F6F6),
          border: Border.all(
            color: const Color(0xFF8E8E93),
            width: 0.5
          )
        ),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.5,
            height: 45,
            child: CustomButton(
              isHomePage: true,
              name: 'Add Lead',
              onTap: () { 
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AddLead()));
              },
            ),
          ),
        ),
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width*0.92,
        shape: const RoundedRectangleBorder(),
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        child: const MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocProvider(
              create: (context) => sl<DepartmentBloc>(),
              child: DepartmentsContainer(refresh: refreshPage),
            ),
            const SizedBox(height: 10,),
            const LeadsCountContainer(),
            const SizedBox(height: 10,),
            BlocProvider(
              create: (context) => sl<LeadBloc>(),
              child: const HomePageBody(),
            ),
          ],
        ),
      ),
    );
  }
}
