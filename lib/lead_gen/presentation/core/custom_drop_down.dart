import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> items;
  final String hintText;
  final String? Function(String?)? validator;
  final Function(String value) getSelectedValue;
  
  const CustomDropDown({Key? key, 
    required this.items, 
    this.validator,
    required this.getSelectedValue,
    required this.hintText}) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? _selectedValue;
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
        color: Colors.grey
    ),
  );
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          filled: true,
          hintText: widget.hintText,
          fillColor: Colors.grey[100],
          contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          enabledBorder: border,
          focusedErrorBorder: border,
          errorBorder: border,
          focusedBorder: border,
        ),
        value: _selectedValue,
        validator: widget.validator,
        items: widget.items.map<DropdownMenuItem<String>>((String value){
          return DropdownMenuItem(
              value: value,
              child: Text(value),
          );
        }).toList(),
        onChanged: (value){
          setState(() {
            _selectedValue = value;
          });
          widget.getSelectedValue(_selectedValue!);
        }
    );
  }
}
