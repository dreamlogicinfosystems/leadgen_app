import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';
import 'package:lead_gen/lead_gen/presentation/pages/home.dart';

import '../../../../injections.dart';
import '../../../constants/constant.dart';
import '../../pages/archive.dart';


class OpenLeadDialog extends StatefulWidget {
  final int leadId;
  final String? source;
  const OpenLeadDialog({Key? key, required this.leadId, this.source}) : super(key: key);

  @override
  State<OpenLeadDialog> createState() => _OpenLeadDialogState();
}

class _OpenLeadDialogState extends State<OpenLeadDialog> {
  final _reasonController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LeadBloc, LeadState>(
      listener: (context, state) {
        state.maybeWhen(
            loadingInProgress: (){
              showLoader(context);
            },
            success: (message){
              showToastMessage(message);
              //to close loader
              Navigator.pop(context);
              //to close container
              widget.source=="chat"?
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => BlocProvider(
                    create: (context) => sl<LeadBloc>(),
                    child: const Home(),
                  )), (route) => false) :
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => const ArchivePage()), (route) => route.isFirst);

              //To reset the dept id
              context.read<DepartmentBloc>().add(const DepartmentEvent.resetDeptId());
            },
            orElse: (){}
        );
      },
      child: Center(
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
                      Text("Reopen Lead",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400),),
                      const SizedBox(height: 10),
                      CustomTextField(
                          isBoardAddPage: true,
                          labelText: 'Enter reason for Opening',
                          maxLines: 1,
                          controller: _reasonController,
                          keyBoardType: TextInputType.text,
                          validator: (value){
                            if(value!.trim()==''){
                              return 'Enter reason';
                            }else if(value.contains(RegExp(r'[-~`!@#$%^&*()_=+{};:?/.,<>]'))){
                              return 'Invalid reason';
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
                              name: 'Submit',
                              onTap: (){
                                if(_formKey.currentState!.validate()){
                                  context.read<LeadBloc>().add(
                                    LeadEvent.updateLeadStatus(
                                        widget.leadId,
                                        1,
                                        _reasonController.text,
                                        context
                                    ),
                                  );
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
        ),
    );
  }
}
