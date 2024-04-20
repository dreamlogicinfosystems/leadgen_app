import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/customer/customer_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import '../../../injections.dart';
import '../core/custom_appbar.dart';
import '../widgets/archive/archive_body.dart';

class ArchivePage extends StatefulWidget {
  const ArchivePage({super.key});

  @override
  State<ArchivePage> createState() => _ArchivePageState();
}

class _ArchivePageState extends State<ArchivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight * 1),
            child: CustomAppBar(
                title: 'Archive',
                isArchivePage: true,
                centerTitle: true,
                automaticallyImplyLeading: true,
                iconColor: Colors.black
            )
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => sl<LeadBloc>(),
            ),
            BlocProvider(
              create: (context) => sl<CustomerBloc>(),
            )
          ],
          child: const ArchivePageBody(),
        )
    );
  }
}
