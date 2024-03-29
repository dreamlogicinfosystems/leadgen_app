import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';

import '../../pages/home.dart';

class CloseLeadDialog extends StatefulWidget {
  const CloseLeadDialog({Key? key}) : super(key: key);

  @override
  State<CloseLeadDialog> createState() => _CloseLeadDialogState();
}

class _CloseLeadDialogState extends State<CloseLeadDialog> {
  final _reasonController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: MediaQuery.of(context).size.height*0.269,
          decoration: BoxDecoration(
              color: const Color(0xFFECECED),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Close Lead",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400),),
                const SizedBox(height: 10),
                CustomTextField(
                    isBoardAddPage: true,
                    labelText: 'Enter reason for closure',
                    maxLines: 1,
                    controller: _reasonController,
                    keyBoardType: TextInputType.text
                ),
                const SizedBox(height: 25),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.48,
                    child: CustomButton(
                        isBoardAddPage: true,
                        name: 'Submit',
                        onTap: (){
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(builder: (context) => const Home()), (route) => false);
                        }
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
