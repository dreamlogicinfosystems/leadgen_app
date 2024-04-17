import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/pages/archive.dart';
import 'package:lead_gen/lead_gen/presentation/pages/customers.dart';
import '../../../application/auth/auth_bloc.dart';
import '../../../constants/constant.dart';
import '../../pages/all_users.dart';
import '../../pages/board.dart';
import '../../pages/login.dart';
import '../../pages/view_reminders.dart';
import 'drawer_head.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  bool isReminders = false;
  bool isArchivedLeads = false;
  bool isBoards = false;
  bool isUsers = false;
  bool isLogin = false;
  bool isCustomers = false;
  String role = '';

  @override
  void initState() {
    context.read<ReminderBloc>().add(ReminderEvent.getRemindersCount(context));
    getRole();
    super.initState();
  }

  getRole() async{
    role = await DepartmentBloc.getUserRole();
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHead(),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.06,
              child: const Center(
                child: Divider(
                color: Color(0xFFD1D3D4),
                thickness: 1.5,
                height: 2,
              ),
            ),),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.45,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isReminders = !isReminders;
                        isArchivedLeads = false;
                        isBoards = false;
                        isUsers = false;
                        isLogin = false;
                        isCustomers = false;
                      });

                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewReminders()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: MediaQuery.of(context).size.height*0.068,
                      decoration: BoxDecoration(
                        color: isReminders==true? Colors.black :Colors.transparent,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Image.asset("assets/images/reminder.png",height: MediaQuery.of(context).size.height*0.035,
                              color: isReminders==true? Colors.white : Colors.black),
                            const SizedBox(width: 10),
                            Text("Reminders",style: GoogleFonts.poppins(
                                fontSize: 14,fontWeight: FontWeight.w400,color:isReminders==true? Colors.white : Colors.black
                            ),),
                            const Spacer(),
                            Container(
                              width: MediaQuery.of(context).size.width*0.065,
                              height: MediaQuery.of(context).size.height*0.029,
                              decoration: BoxDecoration(
                                color: const Color(0xFFC2E90B),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child:BlocBuilder<ReminderBloc, ReminderState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    loadingInProgress: (){
                                      return const Center(
                                        child: SizedBox(
                                          height: 10,
                                            width: 10,
                                            child: CircularProgressIndicator(strokeWidth: 1,)
                                        ),
                                      );
                                    },
                                    successRemCount: (count){
                                      return Center(
                                        child: Text(count.toString(),style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 11),),
                                      );
                                    },
                                    orElse: (){
                                      return Center(
                                        child: Text("0",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 11),),
                                      );
                                    }
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isArchivedLeads = !isArchivedLeads;
                        isReminders = false;
                        isBoards = false;
                        isUsers = false;
                        isLogin = false;
                        isCustomers = false;
                      });
                      
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ArchivePage()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: MediaQuery.of(context).size.height*0.068,
                      decoration: BoxDecoration(
                          color: isArchivedLeads==true? Colors.black :Colors.transparent,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Image.asset("assets/images/archive.png",height: MediaQuery.of(context).size.height*0.035,
                            color: isArchivedLeads==true? Colors.white :Colors.black,),
                            const SizedBox(width: 10),
                            Text("Archived Leads",style: GoogleFonts.poppins(
                                fontSize: 14,fontWeight: FontWeight.w400,color: isArchivedLeads==true? Colors.white :Colors.black
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  role=="user"? const SizedBox() : const SizedBox(height: 5),
                  role=="user"? const SizedBox() : GestureDetector(
                    onTap: (){
                      setState(() {
                        isBoards = !isBoards;
                        isReminders = false;
                        isUsers = false;
                        isLogin = false;
                        isArchivedLeads = false;
                        isCustomers = false;
                      });
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Board()),(route) => route.isFirst);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: MediaQuery.of(context).size.height*0.068,
                      decoration: BoxDecoration(
                          color: isBoards==true? Colors.black :Colors.transparent,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Image.asset("assets/images/board.png",height: MediaQuery.of(context).size.height*0.035,
                            color: isBoards==true? Colors.white :Colors.black,),
                            const SizedBox(width: 10),
                            Text("Boards",style: GoogleFonts.poppins(
                                fontSize: 14,fontWeight: FontWeight.w400,color: isBoards==true? Colors.white :Colors.black
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  role=="user"? const SizedBox() : const SizedBox(height: 5),
                  role=="user"? const SizedBox() : GestureDetector(
                    onTap: (){
                      setState(() {
                        isUsers = !isUsers;
                        isBoards = false;
                        isReminders = false;
                        isLogin = false;
                        isArchivedLeads = false;
                        isCustomers = false;
                      });

                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AllUsers()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: MediaQuery.of(context).size.height*0.068,
                      decoration: BoxDecoration(
                          color: isUsers==true? Colors.black :Colors.transparent,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Image.asset("assets/images/user.png",height: MediaQuery.of(context).size.height*0.035,
                            color: isUsers==true? Colors.white :Colors.black,),
                            const SizedBox(width: 10),
                            Text("Users",style: GoogleFonts.poppins(
                                fontSize: 14,fontWeight: FontWeight.w400,color: isUsers==true? Colors.white :Colors.black
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isArchivedLeads = false;
                        isReminders = false;
                        isBoards = false;
                        isUsers = false;
                        isLogin = false;
                        isCustomers = !isCustomers;
                      });

                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AllCustomers()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: MediaQuery.of(context).size.height*0.068,
                      decoration: BoxDecoration(
                          color: isCustomers==true? Colors.black :Colors.transparent,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Image.asset("assets/images/user.png",height: MediaQuery.of(context).size.height*0.035,
                              color: isCustomers==true? Colors.white :Colors.black,),
                            const SizedBox(width: 10),
                            Text("Customers",style: GoogleFonts.poppins(
                                fontSize: 14,fontWeight: FontWeight.w400,color: isCustomers==true? Colors.white :Colors.black
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.03,
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Divider(
                  color: Color(0xFFD1D3D4),
                  thickness: 1.5,
                  height: 2,
                ),
              ),),
            GestureDetector(
              onTap: (){
                setState(() {
                  isLogin = !isLogin;
                  isUsers = false;
                  isBoards = false;
                  isReminders = false;
                  isArchivedLeads = false;
                  isCustomers = false;
                });
                showAlertDialog(context,"logout",0);
              },
              child: BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.maybeWhen(
                      failed: (error){
                        showErrorToastMessage(error!);
                        Navigator.pop(context);
                      },
                      success: (success){
                        showToastMessage(success!);
                        Navigator.pop(context);
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (context) => const Login()), (route) => false);
                      },
                      loadingInProgress: (){
                        showLoader(context);
                      },
                      orElse: (){}
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.068,
                  decoration: BoxDecoration(
                      color: isLogin==true? Colors.black :Colors.transparent,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Image.asset("assets/images/logout.png",height: MediaQuery.of(context).size.height*0.035,
                        color: isLogin==true? Colors.white :Colors.black,),
                        const SizedBox(width: 10),
                        Text("logout",style: GoogleFonts.poppins(
                            fontSize: 14,fontWeight: FontWeight.w400,color: isLogin==true? Colors.white :Colors.black
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
