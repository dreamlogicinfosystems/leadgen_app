import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/department/department_bloc.dart';
import '../../../constants/delete_dialog.dart';
import '../../../domain/department/department.dart';
import '../../core/custom_button.dart';
import 'add_board.dart';

class BoardPageBody extends StatefulWidget {
  const BoardPageBody({super.key});

  @override
  State<BoardPageBody> createState() => _BoardPageBodyState();
}

class _BoardPageBodyState extends State<BoardPageBody> {

  @override
  void initState() {
    context.read<DepartmentBloc>().add(DepartmentEvent.getDepartments(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget loading = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.8,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );

    return BlocBuilder<DepartmentBloc, DepartmentState>(
      builder: (context, state) {
        return state.maybeWhen(
            failed: (error){
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.8,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(error,style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16)),
                  ),
                ),
              );
            },
            loadingInProgress: (){
              return loading;
            },
            departmentList: (departments){
              List<Department> departList = [];

              departList = departments.toList();
              //remove default department from list
              departList.removeAt(0);

              return departList.isEmpty? SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.8,
                child: Center(
                  child: Text('No Boards created!',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16)),
                ),
              ): Padding(
                padding: const EdgeInsets.only(top:10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: departList.length,
                      itemBuilder: (context, ind){
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 2,left: 25,right: 17),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width*0.9,
                            height: MediaQuery.of(context).size.height*0.07,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(departList[ind].departmentName!,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
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
                                                department: departList[ind],buttonName: 'Update'));
                                          }
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    GestureDetector(
                                      onTap: (){
                                        showDialog(context: context, builder: (context) =>
                                            DeleteDialog(source: 'board',deletionId: departList[ind].id!,));
                                      },
                                      child: Icon(Icons.delete_forever,color: Colors.redAccent,size: MediaQuery.of(context).size.height*0.034),
                                    ),
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
              return loading;
            }
        );
      },
    );
  }
}
