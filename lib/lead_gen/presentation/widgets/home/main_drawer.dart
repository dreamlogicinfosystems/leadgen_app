import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../injections.dart';
import '../../../application/auth/auth_bloc.dart';
import '../../../application/department/department_bloc.dart';
import '../../../constants/constant.dart';
import '../../pages/add_board.dart';
import '../../pages/login.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: SizedBox(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.21,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.12,
                        decoration:  const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFFD88D)
                        ),
                        child: ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset('assets/images/profile.png'),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          height: 25,
                          width: 25,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset("assets/images/clear.png"),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text("Kunal Dhopavkar",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 15
                  )),
                  Text("kunal@dreamlogic.in",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 11,color: const Color(0xFF434445)
                  )),
                  Text("Edit Profile",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 11,color: const Color(0xFFB9B9B9)
                  )),
                ],
              ),
            ),
          ),
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
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.07,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Image.asset("assets/images/reminder.png",height: MediaQuery.of(context).size.height*0.035,color: Colors.black,),
                        const SizedBox(width: 10),
                        Text("Reminders",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                        const Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width*0.070,
                          height: MediaQuery.of(context).size.height*0.030,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC2E90B),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: const Center(
                            child: Text("2"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.07,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Image.asset("assets/images/archive.png",height: MediaQuery.of(context).size.height*0.035),
                        const SizedBox(width: 10),
                        Text("Archived Leads",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BlocProvider(
                      create: (context) => sl<DepartmentBloc>(),
                      child: const AddBoard(),
                    )),(route) => route.isFirst);
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.07,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Image.asset("assets/images/board.png",height: MediaQuery.of(context).size.height*0.035),
                          const SizedBox(width: 10),
                          Text("Boards",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.07,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Image.asset("assets/images/user.png",height: MediaQuery.of(context).size.height*0.035),
                        const SizedBox(width: 10),
                        Text("Users",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),)
                      ],
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
              showAlertDialog(context);
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
              child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.8,
                          height: MediaQuery.of(context).size.height*0.07,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              children: [
                                Image.asset("assets/images/logout.png",height: MediaQuery.of(context).size.height*0.035),
                                const SizedBox(width: 10),
                                Text("logout",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                        ),
            ),
          ),
        ],
      ),
      // child: Column(
      //   children: [
      //     Container(
      //       color: Theme.of(context).colorScheme.inversePrimary,
      //       width: MediaQuery.of(context).size.width,
      //       height: MediaQuery.of(context).size.height*0.38,
      //       child: Padding(
      //         padding: const EdgeInsets.only(left: 30,right: 30,top:50,bottom: 20),
      //         child: Container(
      //           height: MediaQuery.of(context).size.height*0.26,
      //           decoration: BoxDecoration(
      //             color: Colors.white,
      //             borderRadius: BorderRadius.circular(10),
      //           ),
      //           child: Padding(
      //             padding: const EdgeInsets.symmetric(vertical: 10),
      //             child: Column(
      //               children: [
      //                 Container(
      //                   height: 110,
      //                   decoration:  BoxDecoration(
      //                     shape: BoxShape.circle,
      //                     color: Colors.grey.shade300
      //                   ),
      //                   child: ClipRRect(
      //                       clipBehavior: Clip.antiAlias,
      //                       borderRadius: BorderRadius.circular(70),
      //                       child: Image.asset('assets/images/profile.png'),
      //                   ),
      //                 ),
      //                 const SizedBox(height: 5),
      //                 const Text("Savio",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
      //                 const SizedBox(height: 5),
      //                 SizedBox(
      //                   height: 40,
      //                     width: 180,
      //                     child: CustomButton(name: 'Edit Profile', onTap: (){
      //                       Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
      //                     }),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       color: Colors.purpleAccent.shade200,
      //       height: 2,
      //     ),
      //     const SizedBox(height: 15,),
      //     GestureDetector(
      //       onTap: (){
      //           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Home()),(route) => false);
      //       },
      //       child: Container(
      //         width: MediaQuery.of(context).size.width*0.78,
      //         height: MediaQuery.of(context).size.width*0.125,
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(4),
      //             color: Theme.of(context).colorScheme.inversePrimary,
      //             border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
      //         ),
      //         child: const Center(child: Text("All Leads",style: TextStyle(fontSize: 16),)),
      //       ),
      //     ),
      //     const SizedBox(height: 20,),
      //     GestureDetector(
      //       onTap: (){
      //         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Home()),(route) => false);
      //       },
      //       child: Container(
      //         width: MediaQuery.of(context).size.width*0.78,
      //         height: MediaQuery.of(context).size.width*0.125,
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(4),
      //             color: Theme.of(context).colorScheme.inversePrimary,
      //             border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
      //         ),
      //         child: const Center(child: Text("New Lead",style: TextStyle(fontSize: 16))),
      //       ),
      //     ),
      //     const SizedBox(height: 20,),
      //     GestureDetector(
      //       onTap: (){
      //         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Home()),(route) => false);
      //       },
      //       child: Container(
      //         width: MediaQuery.of(context).size.width*0.78,
      //         height: MediaQuery.of(context).size.width*0.125,
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(4),
      //             color: Theme.of(context).colorScheme.inversePrimary,
      //             border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
      //         ),
      //         child: const Center(child: Text("Delayed Lead",style: TextStyle(fontSize: 16))),
      //       ),
      //     ),
      //     const SizedBox(height: 20,),
      //     GestureDetector(
      //       onTap: (){
      //         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const ViewReminders()),(route) => route.isFirst);
      //       },
      //       child: Container(
      //         width: MediaQuery.of(context).size.width*0.78,
      //         height: MediaQuery.of(context).size.width*0.125,
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(4),
      //             color: Theme.of(context).colorScheme.inversePrimary,
      //             border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
      //         ),
      //         child: const Center(child: Text("Reminders",style: TextStyle(fontSize: 16))),
      //       ),
      //     ),
      //     const SizedBox(height: 20,),
      //     GestureDetector(
      //       onTap: (){
      //         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BlocProvider(
      //           create: (context) => sl<DepartmentBloc>(),
      //           child: const AddDepartment(),
      //         )),(route) => route.isFirst);
      //       },
      //       child: Container(
      //         width: MediaQuery.of(context).size.width*0.78,
      //         height: MediaQuery.of(context).size.width*0.125,
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(4),
      //             color: Theme.of(context).colorScheme.inversePrimary,
      //             border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
      //         ),
      //         child: const Center(child: Text("Add Department",style: TextStyle(fontSize: 16))),
      //       ),
      //     ),
      //     const SizedBox(height: 20,),
      //     GestureDetector(
      //       onTap: (){
      //         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const AddUser()),(route) => route.isFirst);
      //       },
      //       child: Container(
      //         width: MediaQuery.of(context).size.width*0.78,
      //         height: MediaQuery.of(context).size.width*0.125,
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(4),
      //             color: Theme.of(context).colorScheme.inversePrimary,
      //             border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
      //         ),
      //         child: const Center(child: Text("Add User",style: TextStyle(fontSize: 16))),
      //       ),
      //     ),
      //     const SizedBox(height: 20,),
      //     GestureDetector(
      //       onTap: (){
      //         showAlertDialog(context);
      //       },
      //       child: BlocListener<AuthBloc, AuthState>(
      //       listener: (context, state) {
      //         state.maybeWhen(
      //             failed: (error){
      //               showErrorToastMessage(error!);
      //             },
      //             success: (success){
      //               showToastMessage(success!);
      //               Navigator.pushAndRemoveUntil(context,
      //                   MaterialPageRoute(builder: (context) => const Login()), (route) => false);
      //             },
      //             orElse: (){}
      //         );
      //       },
      //         child: Container(
      //           width: MediaQuery.of(context).size.width*0.78,
      //           height: MediaQuery.of(context).size.width*0.125,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(4),
      //               color: Theme.of(context).colorScheme.inversePrimary,
      //               border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
      //           ),
      //           child: const Center(child: Text("Logout",style: TextStyle(fontSize: 16))),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
