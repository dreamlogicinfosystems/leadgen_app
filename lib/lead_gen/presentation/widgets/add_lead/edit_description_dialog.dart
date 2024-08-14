import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';

import '../../../constants/constant.dart';
import '../../core/custom_button.dart';
import '../../core/custom_textfield.dart';

class EditDescriptionDialog extends StatefulWidget {
  final int leadId;
  final String description;
  const EditDescriptionDialog({super.key, required this.leadId, required this.description});

  @override
  State<EditDescriptionDialog> createState() => _EditDescriptionDialogState();
}

class _EditDescriptionDialogState extends State<EditDescriptionDialog> {
  final _formKey = GlobalKey<FormState>();
  final _shortDescription = TextEditingController();

  @override
  void initState() {
    setState(() {
      _shortDescription.text = widget.description.isEmpty? "" : widget.description;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LeadBloc, LeadState>(
      listener: (context, state) {
        state.maybeWhen(
          failed: (error){
            showErrorToastMessage(error);
            //To close loader
            Navigator.pop(context);
          },
          success: (message){
            //this is worst case senario becz pushAndReplace was giving issue
            showToastMessage(message);
            //To close loader
            Navigator.pop(context);
            //To close dialog
            Navigator.pop(context);
            //to close modal sheet
            Navigator.pop(context);
            //to close the page
            Navigator.pop(context);
          },
          loadingInProgress: (){
            showLoader(context);
          },
          orElse: (){}
        );
      },
      builder: (context, state) {
        return Center(
          child: Form(
            key: _formKey,
            child: Card(
              child: Container(
                width: MediaQuery.of(context).size.width*0.9,
                // height: MediaQuery.of(context).size.height*0.269,
                decoration: BoxDecoration(
                    color: const Color(0xFFECECED),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Change description",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400),),
                      const SizedBox(height: 15),
                      CustomTextField(
                        isBoardAddPage: true,
                        labelText: 'Enter short description',
                        maxLines: 1,
                        controller: _shortDescription,
                        keyBoardType: TextInputType.text,
                        validator: (value){
                          if(value!.trim()==''){
                            return 'Enter short description';
                          }else if(value.contains(RegExp(r'[~`!@#$%^&*()=+{};:?/<>]'))){
                            return 'Invalid short description';
                          }else if(value.length>50){
                            return "description cannot exceed 50 characters";
                          }else{
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 25),
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.48,
                          child: CustomButton(
                              isBoardAddPage: true,
                              name: 'Save',
                              onTap: (){
                                if(_formKey.currentState!.validate()){
                                  if(_shortDescription.text == widget.description){
                                    showErrorToastMessage("Please change the description to update!");
                                  }else{
                                    context.read<LeadBloc>().add(LeadEvent.updateLeadDescription(
                                        widget.leadId,
                                        _shortDescription.text,
                                        context
                                    ));
                                  }
                                }
                              }
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
