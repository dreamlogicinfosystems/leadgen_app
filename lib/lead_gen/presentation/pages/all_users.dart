import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/department_user/department_user_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/add_user/users_page_body.dart';

import '../../../injections.dart';


class AllUsers extends StatefulWidget {
  const AllUsers({Key? key}) : super(key: key);

  @override
  State<AllUsers> createState() => _AllUsersState();
}

class _AllUsersState extends State<AllUsers> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight * 1),
          child: CustomAppBar(
              isUserPage: true,
              title: 'Users',
              centerTitle: true,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          )
      ),
      body: BlocProvider(
        create: (context) => sl<DepartmentUserBloc>(),
        child: const UsersPageBody(),
      ),
    );
  }
}
