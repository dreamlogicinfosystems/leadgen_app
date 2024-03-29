import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/domain/department/department.dart';
import 'package:lead_gen/lead_gen/domain/department_user/department_user.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/add_user/add_user.dart';
import '../core/custom_button.dart';


class AllUsers extends StatefulWidget {
  const AllUsers({Key? key}) : super(key: key);

  @override
  State<AllUsers> createState() => _AllUsersState();
}

class _AllUsersState extends State<AllUsers> {
  List<DepartmentUser> users = [
    const DepartmentUser(id: 1, name: 'Savio Pereira',email: 'savio@dreamlogic.in',phone: '7709022604',password: 'Savio@1990',departments: [Department(id: 1, departmentName: 'App'),Department(id: 2, departmentName: 'Marketing'),Department(id: 3, departmentName: 'Web')]),
    const DepartmentUser(id: 2, name: 'Sparsh Kudchadker',email: 'sparsh@dreamlogic.in',phone: '9906317206',password: 'Sparsh@1995',departments: [Department(id: 2, departmentName: 'Marketing'),Department(id: 3, departmentName: 'Web')]),
    const DepartmentUser(id: 3, name: 'Chetan Borkar',email: 'chetan@dreamlogic.in',phone: '7385293401',password: 'Chetan@1988',departments: [Department(id: 1, departmentName: 'Web')]),
    const DepartmentUser(id: 4, name: 'Vijay Gokhale',email: 'vijay@dreamlogic.in',phone: '9901234567',password: 'Vijay@1998',departments: [Department(id: 1, departmentName: 'App')]),
    const DepartmentUser(id: 5, name: 'Chadwick Dmello',email: 'chadwick@dreamlogic.in',phone: '7704029345',password: 'Chadwick@1998',departments: [Department(id: 1, departmentName: 'Marketing')]),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight * 1),
          child: CustomAppBar(
            isUserPage: true,
            title: 'Users',
            centerTitle: true,
            automaticallyImplyLeading: true,
            iconColor: Colors.black
          )
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, ind){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 2,left: 25,right: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(users[ind].name!,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.025, //20
                          width: MediaQuery.of(context).size.width*0.0889, //32
                          child: CustomButton(
                              name: 'Edit',
                              isBoardPage: true,
                              onTap: (){
                                showDialog(context: context, builder: (context) => AddUser(title: 'Update',departmentUser: users[ind],));
                              }
                          ),
                        )
                      ],
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
