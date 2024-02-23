import 'package:flutter/material.dart';

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
          color: const Color.fromRGBO(7, 144, 64, 1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Text(widget.name,style: const TextStyle(
            fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white
          ),
        )),
      ),
    );
  }
}
