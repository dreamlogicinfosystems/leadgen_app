import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/customer/customer_bloc.dart';

import '../../../injections.dart';
import '../core/custom_appbar.dart';
import '../widgets/customer/customer_page_body.dart';

class AllCustomers extends StatefulWidget {
  const AllCustomers({super.key});

  @override
  State<AllCustomers> createState() => _AllCustomersState();
}

class _AllCustomersState extends State<AllCustomers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const  PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 1),
        child: CustomAppBar(
          title: 'All Customers',
          centerTitle: true,
          automaticallyImplyLeading: true,
          iconColor: Colors.black,
        ),
      ),
      body: BlocProvider(
        create: (context) => sl<CustomerBloc>(),
        child: const CustomerPageBody(),
      ),
    );
  }
}

