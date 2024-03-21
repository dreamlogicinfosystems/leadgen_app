import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/pages/add_department.dart';

import '../../../../injections.dart';

class DepartmentsContainer extends StatefulWidget {
  final VoidCallback? refresh;
  const DepartmentsContainer({Key? key, this.refresh}) : super(key: key);

  @override
  State<DepartmentsContainer> createState() => _DepartmentsContainerState();
}

class _DepartmentsContainerState extends State<DepartmentsContainer> {
  final List<String> departments = ['App','Web','Marketing'];
  bool appClicked = false;
  bool webClicked = false;
  bool marketingClicked = false;
  bool isDepartmentsAdded = false;

  @override
  void initState() {
    context.read<DepartmentBloc>().add(DepartmentEvent.getDepartments(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.055,
        width: MediaQuery.of(context).size.width,
        child: BlocBuilder<DepartmentBloc, DepartmentState>(
          builder: (context, state) {
            return state.maybeWhen(
              departmentList: (departmentsList){
                return departmentsList.isNotEmpty? ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: departmentsList.length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          context.read<DepartmentBloc>().add(DepartmentEvent.setDeptId(departmentsList[index].id!));
                          widget.refresh!();
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: DepartmentBloc.departmentId== departmentsList[index].id? Colors.black : Colors.white,
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFE8E8E8)
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25,right: 25),
                              child: Text(departmentsList[index].departmentName!,style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 14,color: DepartmentBloc.departmentId== departmentsList[index].id? Colors.white : Colors.black),),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ): Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "You don't have any department added!",textAlign: TextAlign.center,style:
                    TextStyle(fontSize: 15),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(" Please add one ",textAlign: TextAlign.center,style:
                        TextStyle(fontSize: 15),),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BlocProvider(
                              create: (context) => sl<DepartmentBloc>(),
                              child: const AddDepartment(),
                            )));
                          },
                          child: const Text(" click here",textAlign: TextAlign.center,style:
                          TextStyle(fontSize: 15,color: Colors.blue),),
                        )
                      ],
                    )
                  ],
                );
              },
              orElse: (){
                return SizedBox(
                  height: MediaQuery.of(context).size.height*0.055,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: SizedBox(
                      height: 30,
                        width: 30,
                        child: CircularProgressIndicator()
                    ),
                  ),
                );
              }
            );
          },
        )
      ),
    );
  }
}
