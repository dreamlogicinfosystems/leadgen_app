import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RepeatIntervalDropDown extends StatefulWidget {
  final List<String> items;
  final String labelText;
  final String? Function(String?)? validator;
  final Function(String value) getSelectedValue;

  const RepeatIntervalDropDown({super.key,
    required this.items,
    this.validator,
    required this.getSelectedValue,
    required this.labelText});

  @override
  State<RepeatIntervalDropDown> createState() => _RepeatIntervalDropDownState();
}

class _RepeatIntervalDropDownState extends State<RepeatIntervalDropDown> {
  String selectedValue = '';

  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
        color: Colors.grey
    ),
  );

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        filled: true,
        labelText: widget.labelText,
        labelStyle: GoogleFonts.poppins(color: const Color(0xFF727373),fontWeight: FontWeight.w400,fontSize: 13),
        fillColor: Colors.transparent,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 14),
        enabledBorder: border,
        focusedErrorBorder: border,
        errorBorder: border,
        focusedBorder: border,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: GoogleFonts.poppins(color: Colors.black),
      validator: widget.validator,
      items: widget.items.map<DropdownMenuItem<String>>((String value){
        return DropdownMenuItem(
          value: value,
          child: Text(value,style: GoogleFonts.poppins(),)
        );
      }).toList(),
      onChanged: (value){
        if(value!.isNotEmpty){
          setState(() {
            selectedValue = value;
          });
          widget.getSelectedValue(selectedValue);
        }
      }
    );
  }
}
