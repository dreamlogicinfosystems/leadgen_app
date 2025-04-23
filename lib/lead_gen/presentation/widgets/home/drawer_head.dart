import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/pages/profile.dart';

class DrawerHead extends StatefulWidget {
  const DrawerHead({super.key});

  @override
  State<DrawerHead> createState() => _DrawerHeadState();
}

class _DrawerHeadState extends State<DrawerHead> {
  List<String> userData = ['',''];

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async{
    userData = await DepartmentBloc.getUserData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.8,
        // height: MediaQuery.of(context).size.height*0.21,
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
            Text(userData[0],style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 15
            )),
            Text(userData[1],style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 11,color: const Color(0xFF434445)
            )),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
              },
              child: Text("Edit Profile",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 11,color: const Color(0xFFB9B9B9)
              )),
            ),
          ],
        ),
      ),
    );
  }
}
