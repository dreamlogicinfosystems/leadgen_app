import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/custom_appbar.dart';

class ArchivePage extends StatefulWidget {
  const ArchivePage({super.key});

  @override
  State<ArchivePage> createState() => _ArchivePageState();
}

class _ArchivePageState extends State<ArchivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight * 1),
          child: CustomAppBar(
              title: 'Archive',
              centerTitle: true,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          )
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 15),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                },
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFF8A8A8B),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topLeft: Radius.circular(12))
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
                              Text("Savio Pereira",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                              const SizedBox(height: 2),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.65,
                                height: MediaQuery.of(context).size.height*0.061,
                                child: Text('Wants to develop a website for his Villa projects to generate leads and eventually sales',style:
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
                                  child: Text('3rd Mar 24',style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:35,right: 10),
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('20/2/24',style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: const Color(0xFFB9B9B9)),)),
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
        ),
      ),
    );
  }
}
