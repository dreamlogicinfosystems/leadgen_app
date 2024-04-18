import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/pages/add_reminder.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/add_lead/open_lead.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/chat/close_lead_dialog.dart';

import '../../../../injections.dart';

BoxDecoration decoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12)
);

displayBottomSheet(BuildContext context,String username,int leadId,String leadStatus){
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      builder: (context){
        return SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: decoration,
                // height: MediaQuery.of(context).size.height*0.14,
                width: MediaQuery.of(context).size.width*0.9,
                child: Column(
                  children: [
                    leadStatus=='past' || leadStatus=='archived'?
                    const SizedBox():GestureDetector(
                      onTap: (){
                        showDialog(context: context, builder: (context) => BlocProvider(
                          create: (context) => sl<ReminderBloc>(),
                          child: AddReminder(userName: username,source: 'chat page'),
                        ));
                      },
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height*0.070,
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/Vector.png",height: 25,),
                              const SizedBox(width: 20),
                              Text("Add Reminder",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w400),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    leadStatus=='past' || leadStatus=='archived'?
                    const SizedBox() : const Divider(
                      color: Color(0xFFC6C6C8),
                      height: 0,
                    ),
                    leadStatus=='past' || leadStatus=='archived'?
                    GestureDetector(
                      onTap: (){
                        DepartmentBloc.role=="user"?
                        showErrorToastMessage("Only admin can reopen the lead!"):
                        showDialog(context: context, builder: (context) => BlocProvider(
                          create: (context) => sl<LeadBloc>(),
                          child: OpenLeadDialog(leadId: leadId,source: "chat"),
                        ));
                      },
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height*0.070,
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/Cancel.png",height: 25,),
                              const SizedBox(width: 20),
                              Text("Reopen Lead",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w400),)
                            ],
                          ),
                        ),
                      ),
                    ):
                    GestureDetector(
                      onTap: (){
                        showDialog(context: context, builder: (context) => BlocProvider(
                          create: (context) => sl<LeadBloc>(),
                          child: CloseLeadDialog(leadId: leadId,title: "Close",),
                        ));
                      },
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height*0.070,
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/Cancel.png",height: 25,),
                              const SizedBox(width: 20),
                              Text("Close Lead",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w400),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    leadStatus=='past' || leadStatus=='archived' || DepartmentBloc.role=="user"?
                    const SizedBox() : const Divider(
                      color: Color(0xFFC6C6C8),
                      height: 0,
                    ),
                    leadStatus=='past' || leadStatus=='archived' || DepartmentBloc.role=="user"?
                    const SizedBox() : GestureDetector(
                      onTap: (){
                        showDialog(context: context, builder: (context) => BlocProvider(
                          create: (context) => sl<LeadBloc>(),
                          child: CloseLeadDialog(leadId: leadId,title: "Archive"),
                        ));
                      },
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height*0.070,
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/Cancel.png",height: 25,),
                              const SizedBox(width: 20),
                              Text("Archive Lead",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w400),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: decoration,
                  height: MediaQuery.of(context).size.height*0.07,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Center(
                    child: Text("Cancel",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15),),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        );
      }
  );
}