import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lead_gen/lead_gen/domain/lead/lead.dart';

import '../../../../injections.dart';
import '../../../application/lead/lead_bloc.dart';
import '../../../constants/constant.dart';
import '../../pages/chat.dart';

class LeadsDisplayer extends StatefulWidget {
  final List<Lead> leadsList;
  const LeadsDisplayer({super.key, required this.leadsList});

  @override
  State<LeadsDisplayer> createState() => _LeadsDisplayerState();
}

class _LeadsDisplayerState extends State<LeadsDisplayer> {

  simplifyDate(String createdDate){
    final date = DateTime.parse(createdDate);

    final simpleDate = DateFormat('d/M/yy').format(date);

    return simpleDate;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.58,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.07,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF87168)
                    ),
                    height: 22,
                    width: 22,
                  ),
                  const SizedBox(width: 5),
                  Text("Due",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400),),
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFC2E90B)
                    ),
                    height: 22,
                    width: 22,
                  ),
                  const SizedBox(width: 5),
                  Text("Upcoming",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400),),
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF579DFF)
                    ),
                    height: 22,
                    width: 22,
                  ),
                  const SizedBox(width: 5),
                  Text("Past",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400),),
                  const Spacer(),
                  Row(
                    children: [
                      Text("Filter",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                      const SizedBox(width: 5),
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset('assets/images/Slider.png'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.leadsList.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BlocProvider(
                          create: (context) => sl<LeadBloc>(),
                          child: ChatPage(lead:  widget.leadsList[index]),
                        )));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1.5,
                                blurRadius: 5,
                                offset: const Offset(0, 4)
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color:  widget.leadsList[index].showStatus=='due'? const Color(0xFFF87168) :
                                  widget.leadsList[index].showStatus=='upcoming'? const Color(0xFFC2E90B): const Color(0xFF579DFF),
                                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12),topLeft: Radius.circular(12))
                              ),
                              height: MediaQuery.of(context).size.height*0.1,
                              width: 10,
                            ),
                            const SizedBox(width: 6),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.65,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 2),
                                  Text( widget.leadsList[index].name!,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                                  const SizedBox(height: 2),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.65,
                                    height: MediaQuery.of(context).size.height*0.061,
                                    child: Text( widget.leadsList[index].title!,style:
                                    GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,color: const Color(0xFF8A8A8B)),),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width*0.22,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:5,right: 5),
                                      child: Text(modifyDate( widget.leadsList[index].lastChatDate!),style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:35,right: 10),
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(simplifyDate( widget.leadsList[index].createdAt!),style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: const Color(0xFFB9B9B9)),)),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
