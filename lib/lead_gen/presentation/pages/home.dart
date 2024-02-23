import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
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
            shape:  const CircleBorder(
              side: BorderSide(width: 0.2,color: Colors.white38)
            ),
            child: const Icon(Icons.add,size: 28,),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddLead()));
            }
        ),
      ),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight*1),
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Column(
            children: [
              DepartmentsContainer(),
              SizedBox(height: 10,),
              HomePageBody(),
            ],
          ),
        ),
      ),
    );
  }
}
