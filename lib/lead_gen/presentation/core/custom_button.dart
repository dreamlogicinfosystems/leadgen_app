import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {
  final String name;
  final Function() onTap;
  final bool? isHomePage;
  final bool? isChatPage;
  const CustomButton({Key? key,
    required this.name, required this.onTap, this.isHomePage, this.isChatPage}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onTap();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.065,
        decoration: BoxDecoration(
          color: widget.isHomePage==true? const Color(0xFFC2E90B) : Colors.black,
          borderRadius: widget.isChatPage==true? BorderRadius.circular(5) : BorderRadius.circular(10)
        ),
        child: Center(child: Text(widget.name,style: GoogleFonts.poppins(
            fontWeight: widget.isChatPage==true? FontWeight.w400: FontWeight.w500,fontSize: widget.isChatPage==true? 14: 16,color: widget.isHomePage==true? Colors.black :
        widget.isChatPage==true? const Color(0xFFC2E90B) :Colors.white
          ),
        )),
      ),
    );
  }
}
