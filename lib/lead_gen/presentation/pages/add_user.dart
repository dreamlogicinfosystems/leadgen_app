import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/department_user/department_user_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import '../../../injections.dart';
import '../widgets/add_user/add_user_form.dart';


class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight * 1),
          child: CustomAppBar(
              title: 'Add User',
              centerTitle: true,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          )
      ),
      body: BlocProvider(
        create: (context) => sl<DepartmentUserBloc>(),
        child: const AddUserForm(),
      ),
    );
  }
}
