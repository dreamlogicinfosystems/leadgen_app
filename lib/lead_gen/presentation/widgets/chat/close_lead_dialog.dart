import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';

class CloseLeadDialog extends StatefulWidget {
  const CloseLeadDialog({Key? key}) : super(key: key);

  @override
  State<CloseLeadDialog> createState() => _CloseLeadDialogState();
}

class _CloseLeadDialogState extends State<CloseLeadDialog> {
  final _closureTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      // surfaceTintColor: Colors.redAccent,
      title: const Center(child: Text('Close Lead')),
      children: [
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomTextField(
              controller: _closureTextController,
              hintText: 'Reason',
              keyBoardType: TextInputType.text
          ),
        ),
        const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
          child: SizedBox(
            height: 45,
            child: CustomButton(
                name: 'Submit',
                onTap: (){
                  Navigator.pop(context);
                }
            ),
          ),
        ),
      ],
    );
  }
}
