import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';

class NotificationPageBody extends StatefulWidget {
  const NotificationPageBody({super.key});

  @override
  State<NotificationPageBody> createState() => _NotificationPageBodyState();
}

class _NotificationPageBodyState extends State<NotificationPageBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Dismissible(
              key: const Key("1"),
              direction: DismissDirection.endToStart,
              onDismissed: (direction){
                showErrorToastMessage('Notification deleted!');
              },
              background: Padding(
                padding: const EdgeInsets.symmetric(vertical: 17),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/images/delete.png'),
                ),
              ),
              child: Material(
                shadowColor: Colors.black,
                elevation: 12,
                color: const Color(0xFFFDFDFD),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Follow Up Reminder",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14),),
                          Text("Follow up with Brian regarding the Design",style:
                          GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 11,color: const Color(0xFF8A8A8B)))
                        ],
                      ),
                      Text("1d",style: GoogleFonts.poppins(color: const Color(0xFF09090B),fontSize: 11,fontWeight: FontWeight.w400),)
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
