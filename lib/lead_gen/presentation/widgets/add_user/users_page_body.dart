import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department_user/department_user_bloc.dart';
import 'package:lead_gen/lead_gen/constants/delete_dialog.dart';
import '../../../../injections.dart';
import '../../core/custom_button.dart';
import 'add_user.dart';

class UsersPageBody extends StatefulWidget {
  const UsersPageBody({super.key});

  @override
  State<UsersPageBody> createState() => _UsersPageBodyState();
}

class _UsersPageBodyState extends State<UsersPageBody> {

  @override
  void initState() {
    context.read<DepartmentUserBloc>().add(DepartmentUserEvent.getDepartmentUser(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DepartmentUserBloc, DepartmentUserState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadingInProgress: (){
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.85,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          departmentUser: (departmentUsers){
            return Padding(
              padding: const EdgeInsets.only(top:10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: departmentUsers.length,
                    itemBuilder: (context, ind){
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 2,left: 25,right: 17),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.9,
                          height: MediaQuery.of(context).size.height*0.07,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(departmentUsers[ind].name!,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                              Row(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height*0.025, //20
                                    width: MediaQuery.of(context).size.width*0.0889, //32
                                    child: CustomButton(
                                        name: 'Edit',
                                        isBoardPage: true,
                                        onTap: (){
                                          showDialog(context: context, builder: (context) => BlocProvider(
                                            create: (context) => sl<DepartmentUserBloc>(),
                                            child: AddUser(title: 'Update',departmentUser: departmentUsers[ind]),
                                          ));
                                        }
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: (){
                                      showDialog(context: context, builder: (context) =>
                                          BlocProvider(
                                            create: (context) => sl<DepartmentUserBloc>(),
                                            child: DeleteDialog(deletionId: departmentUsers[ind].id!, source: 'users'),
                                          ));
                                    },
                                    child: Icon(Icons.delete_forever,color: Colors.redAccent,size: MediaQuery.of(context).size.height*0.034),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
            );
          },
          orElse: (){
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.85,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        );
      },
    );
  }
}
