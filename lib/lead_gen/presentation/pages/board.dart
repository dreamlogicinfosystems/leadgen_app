import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import '../../constants/delete_dialog.dart';
import '../widgets/add_board/add_board.dart';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  void initState() {
    context.read<DepartmentBloc>().add(DepartmentEvent.getDepartments(context));
    super.initState();
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
      body: BlocConsumer<DepartmentBloc, DepartmentState>(
        listener: (context, state){
          state.maybeWhen(
            success: (message){
              showToastMessage(message);
              Navigator.pop(context);
            },
            orElse: (){}
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
              failed: (error){
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.8,
                  child: Center(
                    child: Text(error,style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16)),
                  ),
                );
              },
              loadingInProgress: (){
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.8,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
              departmentList: (departments){
                return Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        itemCount: departments.length,
                        itemBuilder: (context, ind){
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 2,left: 25,right: 17),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width*0.9,
                              height: MediaQuery.of(context).size.height*0.07,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(departments[ind].departmentName!,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: MediaQuery.of(context).size.height*0.025, //20
                                        width: MediaQuery.of(context).size.width*0.0889, //32
                                        child: CustomButton(
                                            name: 'Edit',
                                            isBoardPage: true,
                                            onTap: (){
                                              showDialog(context: context, builder: (context) => AddBoard(
                                                department: departments[ind],buttonName: 'Update'));
                                            }
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      GestureDetector(
                                        onTap: (){
                                          showDialog(context: context, builder: (context) =>
                                              DeleteDialog(source: 'board',deletionId: departments[ind].id!,));
                                          // showAlertDialog(context,'board',departments[ind].id);
                                        },
                                        child: Icon(Icons.delete_forever,color: Colors.redAccent,size: MediaQuery.of(context).size.height*0.034),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                );
              },
              orElse: (){
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.8,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
          );
        },
      )
    );
  }
}
