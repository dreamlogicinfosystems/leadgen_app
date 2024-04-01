import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../application/department/department_bloc.dart';
import '../../application/lead/lead_bloc.dart';
import '../../constants/constant.dart';
import '../../domain/department/department.dart';
import '../../domain/lead/lead.dart';
import '../core/custom_button.dart';
import '../core/custom_drop_down.dart';
import '../core/custom_textfield.dart';

class AddLead extends StatefulWidget {
  const AddLead({Key? key}) : super(key: key);

  @override
  State<AddLead> createState() => _AddLeadState();
}

class _AddLeadState extends State<AddLead> {
  final _nameController = TextEditingController();
  final _titleController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  final _reminderController = TextEditingController();
  final _dateController = TextEditingController();
  DateTime? pickedDate;
  Department board = const Department();
  List<Department> selectedBoards = [];
  List<int> selectedBoardsIds = [];

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
  
  pickReminderDate() async{
    pickedDate = await showDatePicker(
        context: context, 
        initialDate: DateTime.now(), 
        firstDate: DateTime.now(), 
        lastDate: DateTime(2050)
    );

    if(pickedDate!=null){
      final date = DateFormat('dd-MMM-yyyy').format(pickedDate!);
      _reminderController.text = date;
    }
  }

  @override
  void initState() {
    context.read<DepartmentBloc>().add(DepartmentEvent.getDepartments(context));
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  bool validateData(){
    if(_nameController.text.trim()=='' || _emailController.text.trim()=='' || _titleController.text.trim()==''
        || _phoneController.text.trim()=='' || _messageController.text=='' || _reminderController.text==''){
      showErrorToastMessage("Please fill in all details");
      return false;
    }else if(selectedBoards.isEmpty){
      showErrorToastMessage("Atleast select one board");
      return false;
    }else if(_nameController.text.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>]'))){
      showErrorToastMessage("Invalid Full Name");
      return false;
    }else if(!EmailValidator.validate(_emailController.text) || _emailController.text.contains(RegExp(r'^[-~!@#$%^&*()_+-=;:{},./?><]'))){
      showErrorToastMessage("Invalid Email");
      return false;
    }else if(_phoneController.text.contains(RegExp(r'[-.,]')) || _phoneController.text.contains(' ')){
      showErrorToastMessage('Invalid Phone Number');
      return false;
    }else if(_phoneController.text.length>10 || _phoneController.text.length<10){
      showErrorToastMessage("Phone number should be of 10 digit");
      return false;
    }else{
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.9,
          decoration: BoxDecoration(
              color: const Color(0xFFECECED),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Add Lead",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    labelText: 'Full Name',
                    isBoardAddPage: true,
                    controller: _nameController,
                    keyBoardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                      isBoardAddPage: true,
                      labelText: 'Title',
                      controller: _titleController,
                      keyBoardType: TextInputType.text
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                      isBoardAddPage: true,
                      labelText: 'Phone',
                      controller: _phoneController,
                      keyBoardType: TextInputType.number
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                      isBoardAddPage: true,
                      labelText: 'Email',
                      controller: _emailController,
                      keyBoardType: TextInputType.emailAddress
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                      isBoardAddPage: true,
                      labelText: 'Message',
                      maxLines: 3,
                      controller: _messageController,
                      keyBoardType: TextInputType.text
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Add to board",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400),),
                  ),
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 20),
                  CustomTextField(
                      isBoardAddPage: true,
                      labelText: 'Reminder',
                      controller: _reminderController,
                      onTap: (){
                        pickReminderDate();
                      },
                      keyBoardType: TextInputType.none
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: CustomButton(
                        name: 'Add lead',
                        onTap: (){
                          if(validateData()==true){
                            //retrieving department ids from department lis
                            for(int i=0; i<selectedBoards.length; i++){
                              selectedBoardsIds.add(selectedBoards[i].id!);
                            }

                            debugPrint("selected department ids: $selectedBoardsIds");

                            // context.read<LeadBloc>().add(LeadEvent.addLead(
                            //     Lead(
                            //         name: _nameController.text.trim(),
                            //         phone: _phoneController.text,
                            //         email: _emailController.text.trim(),
                            //         message: _messageController.text,
                            //         departmentIds: selectedBoardsIds
                            //     ),
                            //     context),
                            // );
                          }
                      },),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );  //const AddLeadBody()
  }
}
