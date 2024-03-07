import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final TextInputType keyBoardType;
  final bool? obscureText;
  final int? maxLines;
  final bool? readOnly;
  final bool? isChatPage;
  final int? maxLength;
  final Function()? onTap;
  final IconData? icon;
  final bool? isLogin;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;

  const CustomTextField(
      {Key? key,
        required this.controller,
        this.hintText,
        required this.keyBoardType,
        this.obscureText,
        this.maxLines,
        this.readOnly,
        this.isChatPage,
        this.maxLength, this.onTap, this.validator, this.onChanged, this.icon, this.isLogin, this.labelText})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final InputBorder border =  OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
        color: Colors.grey
    ),
  );

  final InputBorder planBorder =  const OutlineInputBorder(
    borderSide: BorderSide(
        color: Colors.grey
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onTap: (){
        if(widget.onTap!=null){
          widget.onTap!();
        }
      },
      onChanged: widget.onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      enabled: true,
      readOnly: widget.readOnly==null? false: widget.readOnly!,
      maxLines: widget.maxLines,
      obscureText: widget.obscureText==null? false : widget.obscureText!,
      keyboardType: widget.keyBoardType,
      maxLength: widget.maxLength,
      decoration: InputDecoration(
        prefixIcon: widget.isLogin==true? Icon(widget.icon) : null,
        fillColor: Colors.grey[100],
        filled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.black),
        enabled: true,
        enabledBorder: widget.isChatPage==true? planBorder :border,
        focusedErrorBorder: widget.isChatPage==true? planBorder :border,
        focusedBorder: widget.isChatPage==true? planBorder :border,
        errorBorder: widget.isChatPage==true? planBorder :border,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15)
      ),
    );
  }
}
