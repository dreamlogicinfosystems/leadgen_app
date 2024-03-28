import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_textfield.dart';

class AddBoard extends StatefulWidget {
  const AddBoard({super.key});

  @override
  State<AddBoard> createState() => _AddBoardState();
}

class _AddBoardState extends State<AddBoard> {
  final _boardController = TextEditingController();
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
                Text("Board Title",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w400),),
                const SizedBox(height: 10),
                CustomTextField(
                  isBoardAddPage: true,
                  labelText: 'Enter new Board Title',
                  controller: _boardController,
                  keyBoardType: TextInputType.text
                ),
                const SizedBox(height: 25),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.48,
                    child: CustomButton(
                        isBoardAddPage: true,
                        name: 'Add board',
                        onTap: (){}
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

