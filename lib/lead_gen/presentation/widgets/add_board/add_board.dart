import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import '../../../domain/department/department.dart';
import '../../pages/board.dart';

class AddBoard extends StatefulWidget {
  final Department? department;
  final String buttonName;
  const AddBoard({super.key, this.department, required this.buttonName});

  @override
  State<AddBoard> createState() => _AddBoardState();
}

class _AddBoardState extends State<AddBoard> {
  final _boardController = TextEditingController();

  @override
  void initState() {
    _boardController.text = (widget.department==null? '' : widget.department!.departmentName)!;
    super.initState();
  }

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
      builder: (context, state){
        return state.maybeWhen(
            loadingInProgress: (){
              return Center(
                child: Card(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.269,
                    decoration: BoxDecoration(
                        color: const Color(0xFFECECED),
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
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                        color: const Color(0xFFECECED),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Board Title",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400),),
                          const SizedBox(height: 10),
                          CustomTextField(
                              isBoardAddPage: true,
                              labelText: 'Enter new Board Title',
                              maxLines: 1,
                              controller: _boardController,
                              keyBoardType: TextInputType.text
                          ),
                          const SizedBox(height: 25),
                          Center(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width*0.48,
                              child: CustomButton(
                                  isBoardAddPage: true,
                                  name: '${widget.buttonName} board',
                                  onTap: (){
                                    if(_boardController.text.trim()==''){
                                      showErrorToastMessage('Enter board title');
                                    }else if(_boardController.text.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>]'))){
                                      showErrorToastMessage('Invalid board title');
                                    }else{
                                      if(widget.buttonName=="Add"){
                                        context.read<DepartmentBloc>().add(
                                          DepartmentEvent.createDepartment(
                                              _boardController.text.trim(),
                                              context
                                          ),
                                        );
                                      }else{
                                        context.read<DepartmentBloc>().add(
                                          DepartmentEvent.updateDepartment(
                                            Department(
                                                id: widget.department!.id,
                                                departmentName: _boardController.text.trim()
                                            ),
                                            context
                                          ),
                                        );
                                      }
                                    }
                                  }
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

