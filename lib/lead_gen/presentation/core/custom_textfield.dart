import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  final bool? isBoardAddPage;
  final Widget? clearReminderWidget;
  final Function()? onTap;
  final IconData? icon;
  final bool? isLogin;
  final bool? clearReminder;
  final bool? isLoginPass;
  final Widget? suffixIcon;
  final Function()? onEditingComplete;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final FocusNode? focusNode;
  final bool? isShowPhoneBook;

  const CustomTextField(
      {Key? key,
        required this.controller,
        this.hintText,
        required this.keyBoardType,
        this.obscureText,
        this.maxLines,
        this.readOnly,
        this.isChatPage,
        this.maxLength,
        this.onTap, this.validator,
        this.onChanged, this.icon,
        this.isLogin, this.labelText,
        this.isLoginPass, this.suffixIcon,
        this.onEditingComplete,
        this.isBoardAddPage,
        this.focusNode,
        this.onSubmitted,
        this.clearReminder,
        this.clearReminderWidget,
        this.isShowPhoneBook
      })
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final InputBorder border =  OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
        color: Colors.grey,
        width: 1
    ),
  );

  final InputBorder planBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: const BorderSide(
        color: Colors.grey,
        width: 0.5
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.poppins(fontSize: 14),
      controller: widget.controller,
      onTap: (){
        if(widget.onTap!=null){
          widget.onTap!();
        }
      },
      onChanged: widget.onChanged,
      onEditingComplete: (){
        if(widget.onEditingComplete!=null){
          widget.onEditingComplete!();
        }
      },
      onFieldSubmitted: widget.onSubmitted,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      enabled: true,
      focusNode: widget.focusNode,
      readOnly: widget.readOnly==null? false: widget.readOnly!,
      maxLines: widget.maxLines,
      obscureText: widget.obscureText==null? false : widget.obscureText!,
      keyboardType: widget.keyBoardType,
      maxLength: widget.maxLength,
      decoration: InputDecoration(
        // prefixIcon: widget.isLogin==true? Icon(widget.icon) : null,
        suffix: widget.clearReminder==true?
          widget.clearReminderWidget: null,
        suffixIconColor: Colors.black,
        fillColor: Colors.transparent,
        filled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        suffixIcon: widget.isLogin == true || widget.isShowPhoneBook == true? widget.suffixIcon : null,
        labelStyle: GoogleFonts.poppins(color: const Color(0xFF727373),
            fontSize: widget.isBoardAddPage==true? 13: 14,fontWeight: FontWeight.w400),
        enabled: true,
        enabledBorder: widget.isChatPage==true? planBorder :border,
        focusedErrorBorder: widget.isChatPage==true? planBorder :border,
        focusedBorder: widget.isChatPage==true? planBorder :border,
        errorBorder: widget.isChatPage==true? planBorder :border,
        contentPadding: widget.isChatPage==true? const EdgeInsets.symmetric(horizontal: 10,vertical: 3) : const EdgeInsets.symmetric(horizontal: 15,vertical: 15)
      ),
    );
  }
}
