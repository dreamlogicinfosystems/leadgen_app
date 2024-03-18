import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {
  final String name;
  final Function() onTap;
  const CustomButton({Key? key,
    required this.name, required this.onTap}) : super(key: key);

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
          color: Colors.black,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Text(widget.name,style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white
          ),
        )),
      ),
    );
  }
}
