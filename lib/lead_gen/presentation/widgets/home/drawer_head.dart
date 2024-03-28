import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerHead extends StatefulWidget {
  const DrawerHead({super.key});

  @override
  State<DrawerHead> createState() => _DrawerHeadState();
}

class _DrawerHeadState extends State<DrawerHead> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.8,
        height: MediaQuery.of(context).size.height*0.21,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.12,
                  decoration:  const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFFD88D)
                  ),
                  child: ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset('assets/images/profile.png'),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset("assets/images/clear.png"),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text("Kunal Dhopavkar",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 15
            )),
            Text("kunal@dreamlogic.in",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 11,color: const Color(0xFF434445)
            )),
            Text("Edit Profile",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 11,color: const Color(0xFFB9B9B9)
            )),
          ],
        ),
      ),
    );
  }
}
