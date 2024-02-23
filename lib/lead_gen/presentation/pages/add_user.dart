import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import '../widgets/add_user/add_user_form.dart';


class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
              title: 'Add User',
              centerTitle: true,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          )
      ),
      body: AddUserForm(),
    );
  }
}
