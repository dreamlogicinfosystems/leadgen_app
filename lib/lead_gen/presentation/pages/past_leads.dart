import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';

import '../../../injections.dart';
import '../core/custom_appbar.dart';
import '../widgets/past_leads/past_leads_body.dart';

class PastLeadsPage extends StatelessWidget {
  const PastLeadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
            title: "Past Leads",
            automaticallyImplyLeading: true,
            centerTitle: true,
            iconColor: Colors.black,
          )
      ),
      body: BlocProvider(
        create: (context) => sl<LeadBloc>(),
        child: const PastLeadsBody(),
      ),
    );
  }
}
