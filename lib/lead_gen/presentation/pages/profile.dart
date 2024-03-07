import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/profile/profile_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';

import '../../../injections.dart';
import '../widgets/profile/profile_body.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight * 1),
          child: CustomAppBar(
            title: 'Profile',
            centerTitle: true,
            automaticallyImplyLeading: true,
            iconColor: Colors.black,
          ),
        ),
        body: BlocProvider(
          create: (context) => sl<ProfileBloc>(),
          child: const ProfileBody(),
        )
    );
  }
}
