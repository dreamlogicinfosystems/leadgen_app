import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department_user/department_user_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import '../../../injections.dart';
import '../core/custom_button.dart';
import '../widgets/add_user/add_user_form.dart';


class AllUsers extends StatefulWidget {
  const AllUsers({Key? key}) : super(key: key);

  @override
  State<AllUsers> createState() => _AllUsersState();
}

class _AllUsersState extends State<AllUsers> {
  List<String> users = ['Savio Pereira','Sparsh Kudchadker','Chetan Borkar','Vijay Gokhale','Chadwick Dmello'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight * 1),
          child: CustomAppBar(
            isUserPage: true,
            title: 'Users',
            centerTitle: true,
            automaticallyImplyLeading: true,
            iconColor: Colors.black
          )
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, ind){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 2,left: 25,right: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(users[ind],style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.025, //20
                          width: MediaQuery.of(context).size.width*0.0889, //32
                          child: CustomButton(
                              name: 'Edit',
                              isBoardPage: true,
                              onTap: (){}
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
