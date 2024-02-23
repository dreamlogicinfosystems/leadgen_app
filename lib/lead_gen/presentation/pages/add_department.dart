import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_drop_down.dart';

class AddDepartment extends StatefulWidget {
  const AddDepartment({Key? key}) : super(key: key);

  @override
  State<AddDepartment> createState() => _AddDepartmentState();
}

class _AddDepartmentState extends State<AddDepartment> {
  String selectedDepartment = '';

  getSelectedDepartment(String value){
    setState(() {
      selectedDepartment = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
              title: 'Add Department',
              centerTitle: true,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
        child: Column(
          children: [
            CustomDropDown(
                items: const ['App','Web','Marketing'],
                getSelectedValue: getSelectedDepartment,
                hintText: 'Select Department'
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.75,
              child: CustomButton(
                  name: 'Add',
                  onTap: (){

                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
