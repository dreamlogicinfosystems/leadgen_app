import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:intl/intl.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/application/licence/licence_bloc.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/domain/department/department.dart';
import 'package:lead_gen/lead_gen/domain/lead/lead.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import '../../../injections.dart';
import '../../application/lead_count/lead_count_bloc.dart';
import '../../constants/constant.dart';
import '../core/custom_bottom_navBar.dart';
import '../widgets/home/leads_count_container.dart';
import '../widgets/home/main_drawer.dart';
import 'chat.dart';
import 'dart:io';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  VoidCallback? refreshPage;
  String type = 'all';
  int deptId = 1;
  String role = '';
  bool? validity;

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

  simplifyDate(String createdDate){
    final date = DateTime.parse(createdDate);

    final simpleDate = DateFormat('d/M/yy').format(date);

    return simpleDate;
  }

  @override
  void initState() {
    context.read<DepartmentBloc>().add(DepartmentEvent.getDepartments(context));
    context.read<LeadBloc>().add(LeadEvent.getLeads('all',deptId, context));
    context.read<LicenceBloc>().add(LicenceEvent.checkLicence(context));
    getRole();
    super.initState();
    if(Platform.isAndroid) {
      checkUpdate();
    }
  }

  getRole() async{
    role = await DepartmentBloc.getUserRole();
    setState(() {});
    await DepartmentBloc.getUserName();
  }

  getValidity() async{
    validity = await DepartmentBloc.getValidity();
    setState(() {});
  }

  Future<void> checkUpdate() async {
    await InAppUpdate.checkForUpdate().then((info) async {
      if (info.updateAvailability == UpdateAvailability.updateAvailable) {
        await InAppUpdate.performImmediateUpdate().catchError((e) {
          debugPrint(e.toString());
        });
      }
    }).catchError((e) {
      debugPrint(e.toString());
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget leadLoading = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.58,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.07,
            child: filterIndicatorView(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.45,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );

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
      bottomNavigationBar: validity==false || validity==null? const SizedBox() : const CustomBottomNavBar(
        title: 'Add Lead',
        isHomePage: true,
        sourcePage: Source.dashboardPage,
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width*0.92,
        shape: const RoundedRectangleBorder(),
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        child: BlocProvider(
          create: (context) => sl<ReminderBloc>(),
          child: const MainDrawer(),
        ),
      ),
      onDrawerChanged: (bool isOpen) {
        if(isOpen == false) {
          //calling get count and leads api again to load the new data and show
          context.read<LeadBloc>().add(LeadEvent.getLeads(type, deptId, context));
          context.read<LeadCountBloc>().add(LeadCountEvent.getLeadCount(context));
        }
      },
      body: SingleChildScrollView(
        child: BlocListener<LicenceBloc, LicenceState>(
          listener: (context, state) {
            state.maybeWhen(
              failed: () => getValidity(),
              success: () => getValidity(),
              orElse: (){}
            );
          },
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
                                return departmentView(departmentsList, index);
                              },
                            );
                          },
                          orElse: (){
                            return loading;
                          });
                        },
                    )
                ),
              ),
              // DepartmentsContainer(refresh: refreshPage),
              const SizedBox(height: 10),
              const LeadsCountContainer(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: BlocBuilder<LeadBloc, LeadState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                        loadingInProgress: (){
                          return leadLoading;
                        },
                        emptyLeadList: (emptyList){
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.58,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*0.07,
                                  child: filterIndicatorView(),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height*0.45,
                                  child: Center(
                                    child: Text("No leads found!",style:
                                    GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        successLeadsList: (leadsList){
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.585,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*0.07,
                                  child: filterIndicatorView(),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: leadsList.length,
                                      itemBuilder: (context,index){
                                        return leadCardView(leadsList, index);
                                      }
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        orElse: (){
                          return leadLoading;
                        }
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector departmentView(List<Department> departmentsList, int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          context.read<DepartmentBloc>().add(DepartmentEvent.setDeptId(departmentsList[index].id!));
          deptId = departmentsList[index].id!;
        });

        context.read<LeadBloc>().add(LeadEvent.getLeads('all',deptId, context));
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
  }

  BoxDecoration leadCardDeco() {
    return BoxDecoration(
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
    );
  }

  Padding leadCardView(List<Lead> leadsList, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => BlocProvider(
            create: (context) => sl<LeadBloc>(),
            child: ChatPage(lead:  leadsList[index]),
          ))).then((value){
            context.read<LeadBloc>().add(LeadEvent.getLeads(type, deptId, context));
            context.read<LeadCountBloc>().add(LeadCountEvent.getLeadCount(context));
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.1,
          decoration: leadCardDeco(),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color:  leadsList[index].showStatus=='due'? const Color(0xFFF87168) :
                    leadsList[index].showStatus=='upcoming'? const Color(0xFFC2E90B): const Color(0xFF579DFF),
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
                    Text(leadsList[index].name!,style: GoogleFonts.poppins(
                        fontSize: 14,fontWeight: FontWeight.w500),),
                    const SizedBox(height: 2),
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.65,
                        height: MediaQuery.of(context).size.height*0.061,
                        child: Text(leadsList[index].title!,style:
                        GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400,
                            color: const Color(0xFF8A8A8B)),),
                      ),
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
                        child: Text(modifyDate(leadsList[index].lastChatDate!),style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400),),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom:5,right: 15),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(simplifyDate(leadsList[index].createdAt!),style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color: const Color(0xFFB9B9B9)),)),
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

  Padding filterIndicatorView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF87168)
                ),
                height: 22,
                width: 22,
              ),
              const SizedBox(width: 8),
              Text("Due",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400),),
            ],
          ),
          const SizedBox(width: 40),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFC2E90B)
                ),
                height: 22,
                width: 22,
              ),
              const SizedBox(width: 8),
              Text("Upcoming",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400),),
            ],
          ),
        ],
      ),
    );
  }
}
