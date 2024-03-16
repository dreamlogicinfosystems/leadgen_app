import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import '../../../injections.dart';
import '../../application/lead/lead_bloc.dart';
import '../widgets/add_lead/add_lead_body.dart';

class AddLead extends StatefulWidget {
  const AddLead({Key? key}) : super(key: key);

  @override
  State<AddLead> createState() => _AddLeadState();
}

class _AddLeadState extends State<AddLead> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFF0),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
              title: 'Add Lead',
              centerTitle: true,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          )
      ),
      body: MultiBlocProvider(
          providers: [
            BlocProvider (
              create: (BuildContext context) => sl<DepartmentBloc>(),
            ),
            BlocProvider (
              create: (BuildContext context) => sl<LeadBloc>(),
            )
          ],
          child: const AddLeadBody(),
      ),
    );
  }
}
