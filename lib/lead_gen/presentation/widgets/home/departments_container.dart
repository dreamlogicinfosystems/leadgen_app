import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/pages/add_department.dart';

import '../../../../injections.dart';

class DepartmentsContainer extends StatefulWidget {
  const DepartmentsContainer({Key? key}) : super(key: key);

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
    return Container(
      height: MediaQuery.of(context).size.height*0.14,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(7)),
        border: Border.all(
            width: 0.1
        ),
      ),
      child: BlocBuilder<DepartmentBloc, DepartmentState>(
        builder: (context, state) {
          return state.maybeWhen(
            departmentList: (departmentsList){
              return departmentsList.isNotEmpty? ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: departmentsList.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 17,top: 28,bottom: 28),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          // clicked[index] = !clicked[index];
                        });
                      },
                      child: Container(
                        width: departmentsList.length==1? MediaQuery.of(context).size.width*0.85 : 144,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: const BorderRadius.all(Radius.circular(7)),
                          border: Border.all(
                            width: 0.5,
                          ),
                        ),
                        child: Center(
                          child: Text(departmentsList[index].departmentName!,style:
                          const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),),
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
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          );
        },
      )
    );
  }
}
