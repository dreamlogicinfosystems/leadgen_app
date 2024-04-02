import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department_user/department_user_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/add_board/add_board.dart';
import '../../../injections.dart';
import '../widgets/add_user/add_user.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final Color iconColor;
  final bool? isChatPage;
  final bool? isArchivePage;
  final bool? isBoardPage;
  final bool? isMainPage;
  final bool? isUserPage;

  const CustomAppBar({Key? key,
    required this.title,
    required this.centerTitle,
    required this.automaticallyImplyLeading,
    required this.iconColor,
    this.isChatPage,
    this.isBoardPage,
    this.isMainPage,
    this.isUserPage, this.isArchivePage
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme:  IconThemeData(
        color: widget.iconColor,
      ),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      title: Text(widget.title,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 22)),
      centerTitle: widget.centerTitle,
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      actions: [
        widget.isChatPage==true || widget.isMainPage==true || widget.isArchivePage==true? Padding(
          padding: const EdgeInsets.only(right: 8,top: 5),
          child: GestureDetector(
               onTap: (){
                 // showDialog(context: context, builder: (context) => const CloseLeadDialog());
               },
              child: SizedBox(
                width: 50,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(Icons.notifications,size: 27,color: Colors.black),  //Color(0xFFC2E90B)
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                      child: Image.asset('assets/images/notification.png')
                    ),
                    const SizedBox(width: 2),
                    const Text("2",style: TextStyle(fontSize: 11),)
                  ],
                )
              ),
          ),
        ): widget.isBoardPage==true || widget.isUserPage==true?
          GestureDetector(
            onTap: (){
              widget.isBoardPage==true?
              showDialog(context: context, builder: (context) => const AddBoard(buttonName: 'Add',)) :
              widget.isUserPage==true?
              showDialog(context: context, builder: (context) => BlocProvider(
                create: (context) => sl<DepartmentUserBloc>(),
                child: const AddUser(title: 'Add',),
              ))
              : ();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20,top: 5),
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.0695, //25
                height: MediaQuery.of(context).size.height*0.04, //25
                child: Center(
                  child: Image.asset("assets/images/add.png"),
                ),
              ),
            ),
          ) : const SizedBox()
      ],
    );
  }
}
