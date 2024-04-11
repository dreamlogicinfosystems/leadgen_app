import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import '../../../injections.dart';
import '../core/custom_bottom_navBar.dart';
import '../widgets/view_reminder/view_reminder_body.dart';

class ViewReminders extends StatefulWidget {
  const ViewReminders({Key? key}) : super(key: key);

  @override
  State<ViewReminders> createState() => _ViewRemindersState();
}

class _ViewRemindersState extends State<ViewReminders> {
  bool isReminder = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const CustomBottomNavBar(title: 'Add Reminder'),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 1),
        child: CustomAppBar(
            title: "Reminders",
            centerTitle: true,
            isArchivePage: true,
            automaticallyImplyLeading: true,
            iconColor: Colors.black
        ),
      ),
      body: BlocProvider(
        create: (context) => sl<ReminderBloc>(),
        child: const ViewReminderBody(),
      ),
    );
  }
}
