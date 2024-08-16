import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/pages/home.dart';

import '../../../../injections.dart';
import '../../../application/department/department_bloc.dart';
import '../../../application/licence/licence_bloc.dart';
import '../../../constants/constant.dart';
import '../../../domain/department/department.dart';
import '../../../domain/lead/lead.dart';
import '../../core/custom_button.dart';
import '../../core/custom_drop_down.dart';

class EditLeadDeptDialog extends StatefulWidget {
  final Lead lead;
  const EditLeadDeptDialog({super.key, required this.lead});

  @override
  State<EditLeadDeptDialog> createState() => _EditLeadDeptDialogState();
}

class _EditLeadDeptDialogState extends State<EditLeadDeptDialog> {
  List<Department> selectedBoards = [];
  Department board = const Department();

  selectedBoard(Department value){
    if(selectedBoards.contains(value)){
      showErrorToastMessage("Already selected! Cannot select again");
    }else{
      setState(() {
        board = value;
      });
      debugPrint("selected board: $board");
      selectedBoards.add(board);
    }
  }

  @override
  void initState() {
    setState(() {
      selectedBoards = widget.lead.departments!.toList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LeadBloc, LeadState>(
      listener: (context, state) {
        state.maybeWhen(
          failed: (error){
            showToastMessage(error);
            Navigator.pop(context);
          },
          success: (message){
            showToastMessage(message);
            //Worst case scenario
            Navigator.pop(context);

            Navigator.pop(context);

            Navigator.pop(context);

            // Navigator.pushAndRemoveUntil(context,
            //     MaterialPageRoute(builder: (context) =>  MultiBlocProvider(
            //       providers: [
            //         BlocProvider(
            //           create:  (context) => sl<LicenceBloc>(),
            //         ),
            //         BlocProvider(
            //           create: (context) => sl<LeadBloc>(),
            //         )
            //       ],
            //       child: const Home(),
            //     )), (route) => false);
          },
          orElse: (){}
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loadingInProgress: (){
            return Center(
              child: Card(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 170,
                  decoration: BoxDecoration(
                      color: const Color(0xFFECECED),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
              ),
            );
          },
          orElse: (){
            return Center(
              child: Card(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                      color: const Color(0xFFECECED),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Add to board",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400),),
                        ),
                        const SizedBox(height: 15),
                        BlocConsumer<DepartmentBloc, DepartmentState>(
                          listener: (context, state){
                            state.maybeWhen(
                                loadingInProgress: (){
                                  showLoader(context);
                                },
                                departmentList: (departList){
                                  Navigator.pop(context);
                                },
                                orElse: (){}
                            );
                          },
                          builder: (context, state) {
                            return state.maybeWhen(
                                departmentList: (departments){
                                  return CustomDropDown(
                                    getSelectedValue: selectedBoard,
                                    hintText: 'Please select board',
                                    departments: departments,
                                  );
                                },
                                orElse: (){
                                  return CustomDropDown(
                                    getSelectedValue: selectedBoard,
                                    hintText: 'Please select board',
                                    departments: const [],
                                  );
                                }
                            );
                          },
                        ),
                        const SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            spacing: 8.0,
                            runSpacing: 4,
                            direction: Axis.horizontal,
                            children: selectedBoards.map<Widget>((Department department){
                              return SizedBox(
                                height: 20,
                                child: Chip(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  padding: const EdgeInsets.only(bottom: 15),
                                  label: Text(department.departmentName!,style: GoogleFonts.poppins(fontSize: 9,fontWeight: FontWeight.w400),),
                                  deleteIcon: Container(
                                    height: 12,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFC2E90B),
                                    ),
                                    child: Image.asset("assets/images/filled.png"),
                                  ),
                                  onDeleted: (){
                                    setState(() {
                                      selectedBoards.remove(department);
                                    });
                                  },
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width*0.5,
                            child: CustomButton(
                              name: 'Add lead',
                              onTap: (){
                                List<int>selectedBoardsIds = [];
                                for(int i=0; i<selectedBoards.length; i++){
                                  selectedBoardsIds.add(selectedBoards[i].id!);
                                }

                                if(selectedBoards.isEmpty){
                                  showErrorToastMessage("Please select department to update lead!");
                                }else if(listEquals(selectedBoards, widget.lead.departments!)){
                                  showErrorToastMessage("Please select another department to update lead!");
                                } else {
                                  context.read<LeadBloc>().add(LeadEvent.updateLeadDepartments(
                                      widget.lead.id!,
                                      selectedBoardsIds,
                                      context
                                  ));
                                }
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        );
      },
    );
  }
}
