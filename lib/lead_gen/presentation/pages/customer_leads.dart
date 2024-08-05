import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/customer/customer_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_bottom_navBar.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/customer/customer_leads_body.dart';

import '../../../injections.dart';
import '../../domain/customer/customer.dart';
import '../core/custom_appbar.dart';

class CustomerLeads extends StatefulWidget {
  final int custId;
  final Customer customerData;
  const CustomerLeads({super.key, required this.custId,required this.customerData});

  @override
  State<CustomerLeads> createState() => _CustomerLeadsState();
}

class _CustomerLeadsState extends State<CustomerLeads> {
  Customer customer = const Customer();

  @override
  void initState() {
    setState(() {
      customer = widget.customerData;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavBar(title: "Add Lead",isHomePage: true,customerData: customer),
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
