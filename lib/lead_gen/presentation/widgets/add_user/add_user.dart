import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/department_user/department_user_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/domain/department/department.dart';
import 'package:lead_gen/lead_gen/domain/department_user/department_user.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_drop_down.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import 'package:lead_gen/lead_gen/presentation/pages/all_users.dart';

class AddUser extends StatefulWidget {
  final String title;
  final DepartmentUser? departmentUser;
  const AddUser({super.key, required this.title, this.departmentUser});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
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

  displayUserDataInForm(){
    _nameController.text = widget.departmentUser!.name!;
    _emailController.text = widget.departmentUser!.email!;
    _phoneController.text = widget.departmentUser!.phone!;

    for(int i=0; i<widget.departmentUser!.departments!.length; i++){
      selectedBoards.add(widget.departmentUser!.departments![i]);
    }
  }

  bool validate(){
    if(_nameController.text.trim()=='' || _emailController.text.trim()==''
        || widget.title=="Add"? _passwordController.text.trim()=='' || _phoneController.text.trim()=='' : _phoneController.text.trim()==''){
      showErrorToastMessage("Please enter all details");
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
    }else if(_passwordController.text.contains(RegExp(r'^[-~!@#$%^&*()_+-=;:{},./?><]'))){
      showErrorToastMessage('Invalid Password');
      return false;
    }else if(widget.title=="add"){
      if(_passwordController.text.length<8){
        showErrorToastMessage('Password must be atleast 8 character');
        return false;
      }
      return false;
    }else{
      return true;
    }
  }
  
  @override
  void initState() {
    if(widget.departmentUser!=null){
      displayUserDataInForm();
    }
    context.read<DepartmentBloc>().add(DepartmentEvent.getDepartments(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DepartmentUserBloc, DepartmentUserState>(
      listener: (context, state) {
        state.maybeWhen(
          failed: (error){
            showErrorToastMessage(error);
          },
          success: (message){
            showToastMessage(message);
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => const AllUsers()), (route) => route.isFirst);
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
                  height: MediaQuery.of(context).size.height*0.8,
                  decoration: BoxDecoration(
                      color: const Color(0xFFECECED),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(),
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
                  height: MediaQuery.of(context).size.height*0.8,
                  decoration: BoxDecoration(
                      color: const Color(0xFFECECED),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("${widget.title} User",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
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
                            labelText: 'Email',
                            controller: _emailController,
                            keyBoardType: TextInputType.emailAddress
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                            labelText: 'Phone Number',
                            isBoardAddPage: true,
                            controller: _phoneController,
                            keyBoardType: TextInputType.number
                        ),
                        const SizedBox(height: 20),
                        CustomTextField(
                            isBoardAddPage: true,
                            labelText: 'Password',
                            controller: _passwordController,
                            keyBoardType: TextInputType.visiblePassword
                        ),
                        const SizedBox(height: 50),
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
                        const SizedBox(height: 30),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width*0.48,
                            child: CustomButton(
                                name: widget.title=="Add"? 'Add User' : 'Update user',
                                onTap: (){
                                  if(validate()==true){
                                    //retrieving department ids from department lis
                                    for(int i=0; i<selectedBoards.length; i++){
                                      selectedBoardsIds.add(selectedBoards[i].id!);
                                    }

                                    debugPrint("selected department ids: $selectedBoardsIds");

                                    if(widget.title=="Add"){
                                      context.read<DepartmentUserBloc>().add(
                                        DepartmentUserEvent.addDepartmentUser(
                                            DepartmentUser(
                                                name: _nameController.text,
                                                email: _emailController.text,
                                                phone: _phoneController.text,
                                                password: _passwordController.text,
                                                departmentId: selectedBoardsIds
                                            ),
                                            context
                                        ),
                                      );
                                    }else{
                                      context.read<DepartmentUserBloc>().add(
                                        DepartmentUserEvent.updateDepartmentUser(
                                            DepartmentUser(
                                                id: widget.departmentUser!.id,
                                                name: _nameController.text,
                                                email: _emailController.text,
                                                phone: _phoneController.text,
                                                password: _passwordController.text,
                                                departmentId: selectedBoardsIds
                                            ),
                                            context
                                        ),
                                      );
                                    }
                                  }
                                }
                            ),
                          ),
                        )
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
