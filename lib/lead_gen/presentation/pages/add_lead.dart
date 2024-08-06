import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/customer/customer_bloc.dart';
import 'package:lead_gen/lead_gen/application/licence/licence_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/pages/home.dart';
import '../../../injections.dart';
import '../../application/department/department_bloc.dart';
import '../../application/lead/lead_bloc.dart';
import '../../constants/constant.dart';
import '../../domain/department/department.dart';
import '../../domain/lead/lead.dart';
import '../core/custom_button.dart';
import '../core/custom_drop_down.dart';
import '../core/custom_textfield.dart';
import 'customer_leads.dart';

class AddLead extends StatefulWidget {
  final Source sourcePage;
  const AddLead({Key? key, required this.sourcePage}) : super(key: key);

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
    final pickedDateTime = await LeadBloc.selectReminderDateTime(context);

    debugPrint("data from bloc:$pickedDateTime");

    if(pickedDateTime!=null){

      _reminderController.text = pickedDateTime;
    }
  }

  @override
  void initState() {
    context.read<DepartmentBloc>().add(DepartmentEvent.getDepartments(context));
    final customer = CustomerBloc.customer;
    if(customer!=null && widget.sourcePage == Source.customerLeadsPage){
      _nameController.text = customer.custName!;
      _phoneController.text = customer.custPhone!;
      _emailController.text = customer.custEmail!;
    }
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _titleController.dispose();
    _reminderController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  bool validateData(){
    if(_nameController.text.trim()=='' || _emailController.text.trim()=='' || _titleController.text.trim()==''
        || _phoneController.text.trim()=='' || _messageController.text==''){
      showErrorToastMessage("Please fill in all details");
      return false;
    }else if(selectedBoards.isEmpty){
      showErrorToastMessage("Atleast select one board");
      return false;
    }else if(_nameController.text.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>]'))){
      showErrorToastMessage("Invalid Full Name");
      return false;
    }else if(_titleController.text.contains(RegExp(r'[~`!@#$%^&*()=+{};:?/<>]'))){
      showErrorToastMessage('Invalid title');
      return false;
    }else if(_titleController.text.length>50){
      showErrorToastMessage("title cannot exceed 50 characters");
      return false;
    }else if(_messageController.text.length>500){
      showErrorToastMessage("Message cannot exceed 500 character's");
      return false;
    }else if(!EmailValidator.validate(_emailController.text) || _emailController.text.contains(RegExp(r'^[-~!@#$%^&*()_+-=;:{},./?><]')) 
        || _emailController.text.contains(RegExp(r'[+*-]'))){
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
    return BlocConsumer<LeadBloc, LeadState>(
      listener: (context, state) {
        state.maybeWhen(
          failed: (error){
            showToastMessage(error);
          },
          success: (message){
            showToastMessage(message);
            if(widget.sourcePage==Source.customerLeadsPage){
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => const CustomerLeads()), (route) => route.isFirst);
            }else{
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) => sl<LeadBloc>(),
                      ),
                      BlocProvider(
                        create: (context) => sl<LicenceBloc>(),
                      )
                    ],
                    child: const Home(),
                  )), (route) => false);
            }
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
                  height: MediaQuery.of(context).size.height*0.9,
                  decoration: BoxDecoration(
                      color: const Color(0xFFECECED),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Center(child: CircularProgressIndicator()),
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
                            readOnly: widget.sourcePage==Source.customerLeadsPage? true : false,
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
                              keyBoardType: TextInputType.number,
                              readOnly: widget.sourcePage==Source.customerLeadsPage? true : false,
                          ),
                          const SizedBox(height: 20),
                          CustomTextField(
                              isBoardAddPage: true,
                              labelText: 'Email',
                              controller: _emailController,
                              keyBoardType: TextInputType.emailAddress,
                              readOnly: widget.sourcePage==Source.customerLeadsPage? true : false,
                          ),
                          const SizedBox(height: 20),
                          CustomTextField(
                              isBoardAddPage: true,
                              labelText: 'Message',
                              maxLines: 4,
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
                              clearReminder: true,
                              clearReminderWidget: Padding(
                                padding: const EdgeInsets.only(top:5),
                                child: GestureDetector(
                                  onTap: (){
                                    _reminderController.clear();
                                    //also mark picked date , time & reminder time null
                                    LeadBloc.pickedDate = null;
                                    LeadBloc.pickedTime = null;
                                    LeadBloc.reminderDateTime = null;
                                  },
                                  child: Icon(Icons.clear,size: 16),
                                ),
                              ),
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
                                    debugPrint(_messageController.text.length.toString());
                                    //retrieving department ids from department lis
                                    for(int i=0; i<selectedBoards.length; i++){
                                      selectedBoardsIds.add(selectedBoards[i].id!);
                                    }

                                    debugPrint("selected department ids: $selectedBoardsIds");

                                    context.read<LeadBloc>().add(LeadEvent.addLead(
                                      Lead(
                                        name: _nameController.text.trim(),
                                        phone: _phoneController.text,
                                        email: _emailController.text.trim(),
                                        title: _titleController.text.trim(),
                                        date: _reminderController.text==''? '' : _reminderController.text.split(' ')[0],
                                        time: _reminderController.text==''? '' : _reminderController.text.split('  ')[1],
                                        message: _messageController.text,
                                        departmentIds: selectedBoardsIds
                                      ),
                                      context),
                                    );

                                    //reset department id
                                    context.read<DepartmentBloc>().add(const DepartmentEvent.resetDeptId());
                                  }
                                },),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        );
      },
    );  //const AddLeadBody()
  }
}
