import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import '../../../injections.dart';
import '../core/custom_bottom_navBar.dart';
import '../widgets/home/home_body.dart';
import '../widgets/home/leads_count_container.dart';
import '../widgets/home/main_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  VoidCallback? refreshPage;
  String type = 'all';
  Widget loading = ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 6),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                  width: 1,
                  color: const Color(0xFFE8E8E8)
              ),
            ),
            child: const Center(
              child: Padding(
                  padding: EdgeInsets.only(left: 47,right: 47),
                  child: Center(
                    child: SizedBox(
                      height: 10,
                      width: 10,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  )
              ),
            ),
          ),
        );
      }
  );

  @override
  void initState() {
    context.read<DepartmentBloc>().add(DepartmentEvent.getDepartments(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFF0),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 1),
        child: CustomAppBar(
            iconColor: Colors.black,
            title: 'Dashboard',
            isMainPage: true,
            centerTitle: true,
            automaticallyImplyLeading: true
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(
        title: 'Add Lead',
        isHomePage: true
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width*0.92,
        shape: const RoundedRectangleBorder(),
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        child: const MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.055,
                width: MediaQuery.of(context).size.width,
                child: BlocBuilder<DepartmentBloc, DepartmentState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                        loadingInProgress: (){
                          return loading;
                        },
                        departmentList: (departmentsList){
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: departmentsList.length,
                            itemBuilder: (context,index){
                              return GestureDetector(
                                onTap: (){
                                  setState(() {
                                    context.read<DepartmentBloc>().add(DepartmentEvent.setDeptId(departmentsList[index].id!));
                                    type = 'new';
                                    // widget.refresh!();
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 6),
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
                                        padding: const EdgeInsets.only(left: 15,right: 15),
                                        child: Text(departmentsList[index].departmentName!,style:
                                        GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 14,color: DepartmentBloc.departmentId== departmentsList[index].id? Colors.white : Colors.black),),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        orElse: (){
                          return loading;
                        }
                    );
                  },
                )
              ),
            ),
            // DepartmentsContainer(refresh: refreshPage),
            const SizedBox(height: 10),
            const LeadsCountContainer(),
            const SizedBox(height: 10),
            BlocProvider(
              create: (context) => sl<LeadBloc>(),
              child: HomePageBody(type: type),
            ),
          ],
        ),
      ),
    );
  }
}
