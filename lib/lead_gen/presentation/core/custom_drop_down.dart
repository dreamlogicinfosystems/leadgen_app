import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/department/department.dart';

class CustomDropDown extends StatefulWidget {
  final List<Department> departments;
  final String hintText;
  final bool? departmentPage;
  final String? Function(Department?)? validator;
  final Function(Department value) getSelectedValue;
  
  const CustomDropDown({Key? key,
    this.validator,
    required this.getSelectedValue,
    required this.hintText,
    required this.departments, this.departmentPage}) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  Department? _selectedValue;
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
        color: Colors.grey
    ),
  );

  @override
  Widget build(BuildContext context) {

    final list = widget.departments.toList();

    if(list.length>1) {
      list.removeAt(0);
    }

    return ButtonTheme(
      alignedDropdown: true,
      child: DropdownButtonFormField<Department>(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: GoogleFonts.poppins(color: Colors.black),
          decoration: InputDecoration(
            filled: true,
            hintText: widget.hintText,
            hintStyle: GoogleFonts.poppins(color: const Color(0xFF727373),fontWeight: FontWeight.w400,fontSize: 13),
            fillColor: Colors.transparent,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 14),
            enabledBorder: border,
            focusedErrorBorder: border,
            errorBorder: border,
            focusedBorder: border,
          ),
          value: _selectedValue,
          validator: widget.validator,
          items: list.map<DropdownMenuItem<Department>>((Department department){
               return DropdownMenuItem(
                 value: department,
                 child: Text(department.departmentName!),
               );
             }).toList(),
          onChanged: (value){
            setState(() {
              _selectedValue = value;
            });
            widget.getSelectedValue(_selectedValue!);
          }
      ),
    );
  }
}
