import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/lead_count/lead_count_bloc.dart';

class LeadsCountContainer extends StatefulWidget {
  const LeadsCountContainer({Key? key}) : super(key: key);

  @override
  State<LeadsCountContainer> createState() => _LeadsCountContainerState();
}

class _LeadsCountContainerState extends State<LeadsCountContainer> {

  @override
  void initState() {
    context.read<LeadCountBloc>().add(LeadCountEvent.getLeadCount(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<LeadCountBloc, LeadCountState>(
      builder: (context, state) {
        return state.maybeWhen(
          successLeadCount: (list){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        // height: MediaQuery.of(context).size.height*0.09,
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Column(
                          children: [
                            Text("Total Leads",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                            Text(list.totalLeads.toString(),style: GoogleFonts.poppins(
                                fontSize: 32,fontWeight: FontWeight.w600,color: Colors.blue
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(
                        // height: MediaQuery.of(context).size.height*0.09,
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Column(
                          children: [
                            Text("Due",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                            Text(list.dueLeads.toString(),style: GoogleFonts.poppins(
                                fontSize: 32,fontWeight: FontWeight.w600,color: Colors.red
                            ))
                          ],
                        ),
                      ),
                      SizedBox(
                        // height: MediaQuery.of(context).size.height*0.09,
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Column(
                          children: [
                            Text("Upcoming",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                            Text(list.upcomingLeads.toString(),style: GoogleFonts.poppins(
                                fontSize: 32,fontWeight: FontWeight.w600,color: const Color(0xFFC2E90B)
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          orElse: (){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.12,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.09,
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Column(
                          children: [
                            Text("Total Leads",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                            Text("0",style: GoogleFonts.poppins(
                                fontSize: 32,fontWeight: FontWeight.w600,color: Colors.blue
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.09,
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Column(
                          children: [
                            Text("Due",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                            Text("0",style: GoogleFonts.poppins(
                                fontSize: 32,fontWeight: FontWeight.w600,color: Colors.red
                            ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.09,
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Column(
                          children: [
                            Text("Upcoming",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                            Text("0",style: GoogleFonts.poppins(
                                fontSize: 32,fontWeight: FontWeight.w600,color: const Color(0xFFC2E90B)
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        );
      },
    );
  }
}
