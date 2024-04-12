import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/presentation/pages/add_reminder.dart';

import '../../../injections.dart';
import '../../application/department/department_bloc.dart';
import '../../application/lead/lead_bloc.dart';
import '../pages/add_lead.dart';
import 'custom_button.dart';

class CustomBottomNavBar extends StatefulWidget {
  final bool? isHomePage;
  final String title;
  const CustomBottomNavBar({super.key, this.isHomePage, required this.title});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.08,
      decoration: BoxDecoration(
          color: const Color(0xFFF6F6F6),
          border: Border.all(
              color: const Color(0xFF8E8E93),
              width: 0.5
          )
      ),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width*0.5,
          height: 45,
          child: CustomButton(
            isHomePage: true,
            isBoardAddPage: true,
            name: widget.title,
            onTap: () {
              if(widget.isHomePage==true){
                showDialog(context: context, builder: (context) => MultiBlocProvider(
                    providers: [
                      BlocProvider (
                        create: (BuildContext context) => sl<DepartmentBloc>(),
                      ),
                      BlocProvider (
                        create: (BuildContext context) => sl<LeadBloc>(),
                      )
                    ],
                    child: const AddLead()));
              }else{
                showDialog(context: context, builder: (context) => BlocProvider(
                  create: (context) => sl<ReminderBloc>(),
                  child: const AddReminder(userName: '',source: 'reminder page'),
                ));
              }
            },
          ),
        ),
      ),
    );
  }
}
