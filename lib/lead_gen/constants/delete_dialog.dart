import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';

import '../application/department_user/department_user_bloc.dart';
import '../presentation/core/custom_button.dart';
import '../presentation/pages/board.dart';
import 'constant.dart';

class DeleteDialog extends StatefulWidget {
  final int deletionId;
  final String source;
  const DeleteDialog({super.key, required this.deletionId, required this.source});

  @override
  State<DeleteDialog> createState() => _DeleteDialogState();
}

class _DeleteDialogState extends State<DeleteDialog> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DepartmentBloc, DepartmentState>(
      listener: (context, state) {
        state.maybeWhen(
            failed: (error){
              showErrorToastMessage(error);
              Navigator.pop(context);
            },
            success: (message){
              showToastMessage(message);
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => const Board()), (route) => route.isFirst);
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
                  width: MediaQuery.of(context).size.width*0.75,
                  height: MediaQuery.of(context).size.height*0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Center(child: CircularProgressIndicator(),),
                ),
              ),
            );
          },
          orElse: (){
            return Center(
              child: Card(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.75,
                  height: MediaQuery.of(context).size.height*0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Are you sure? you want to delete",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 17),),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 45,
                                  child: CustomButton(
                                      name: 'Yes',
                                      isDeletePage: true,
                                      onTap: (){
                                        if(widget.source=="board"){
                                          debugPrint("deletion id: ${widget.deletionId}");
                                          context.read<DepartmentBloc>().add(DepartmentEvent.deleteDepartment(widget.deletionId, context));
                                        }else if(widget.source=="users"){
                                          debugPrint("deletion id: ${widget.deletionId}");
                                          context.read<DepartmentUserBloc>().add(
                                              DepartmentUserEvent.deleteDepartmentUser(widget.deletionId, context)
                                          );
                                        }
                                      }
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: SizedBox(
                                    height: 45,
                                    child: CustomButton(
                                        name: 'No',
                                        onTap: (){
                                          Navigator.pop(context);
                                        })
                                ),
                              ),
                            ],
                          ),
                        ),
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
