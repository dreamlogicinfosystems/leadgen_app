import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/customer/customer_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/customer/customer_leads_body.dart';

import '../../../injections.dart';
import '../core/custom_appbar.dart';

class CustomerLeads extends StatefulWidget {
  final int custId;

  const CustomerLeads({super.key, required this.custId});

  @override
  State<CustomerLeads> createState() => _CustomerLeadsState();
}

class _CustomerLeadsState extends State<CustomerLeads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 1),
        child: CustomAppBar(
          title: 'Leads',
          centerTitle: true,
          automaticallyImplyLeading: true,
          iconColor: Colors.black,
        ),
      ),
      body: BlocProvider(
        create: (context) => sl<CustomerBloc>(),
        child: CustomerLeadsBody(custId: widget.custId),
      ),
    );
  }
}
