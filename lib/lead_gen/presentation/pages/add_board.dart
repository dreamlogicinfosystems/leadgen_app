import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_drop_down.dart';
import 'package:lead_gen/lead_gen/presentation/pages/add_user.dart';

class AddBoard extends StatefulWidget {
  const AddBoard({Key? key}) : super(key: key);

  @override
  State<AddBoard> createState() => _AddBoardState();
}

class _AddBoardState extends State<AddBoard> {
  String selectedDepartment = '';
  List<String> boards = ['Software Development','Marketing','Design','App Development','Cloud Infrastructure'];

  getSelectedDepartment(String value){
    setState(() {
      selectedDepartment = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
              title: 'Boards',
              centerTitle: true,
              automaticallyImplyLeading: true,
              isBoardPage: true,
              iconColor: Colors.black
          )
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: boards.length,
              itemBuilder: (context, ind){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 2,left: 25,right: 25),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(boards[ind],style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                        SizedBox(
                          height: 20,
                          width: 35,
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
      )
    );
  }
}
