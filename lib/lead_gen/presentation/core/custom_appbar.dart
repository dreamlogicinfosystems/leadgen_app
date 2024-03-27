import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/chat/close_lead_dialog.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final Color iconColor;
  final bool? isChatPage;
  final bool? isBoardPage;
  final bool? isMainPage;

  const CustomAppBar({Key? key,
    required this.title,
    required this.centerTitle,
    required this.automaticallyImplyLeading,
    required this.iconColor,
    this.isChatPage,
    this.isBoardPage,
    this.isMainPage
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
        widget.isChatPage==true || widget.isMainPage==true? Padding(
          padding: const EdgeInsets.only(right: 10,top: 5),
          child: GestureDetector(
               onTap: (){
                 // showDialog(context: context, builder: (context) => const CloseLeadDialog());
               },
              child: const SizedBox(
                width: 50,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications,size: 27,color: Colors.black),  //Color(0xFFC2E90B)
                    Text("2",style: TextStyle(fontSize: 11),)
                  ],
                )
              ),
          ),
        ): widget.isBoardPage==true?
          Padding(
            padding: const EdgeInsets.only(right: 20,top: 5),
            child: SizedBox(
              width: 25,
              height: 25,
              child: Center(
                child: Image.asset("assets/images/add.png"),
              ),
            ),
          ) : const SizedBox()
      ],
    );
  }
}
