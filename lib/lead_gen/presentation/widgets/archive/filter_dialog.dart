import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';

import '../../core/custom_button.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({super.key});

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  List<String> filterType = ['Archive leads','Close leads'];
  String selectedValue = '';
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
        color: Colors.grey
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width*0.9,
          decoration: BoxDecoration(
              color: const Color(0xFFECECED),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Filter",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),),
                const SizedBox(height: 15),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintStyle: GoogleFonts.poppins(color: const Color(0xFF727373),fontWeight: FontWeight.w400,fontSize: 13),
                      fillColor: Colors.transparent,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 14),
                      enabledBorder: border,
                      focusedErrorBorder: border,
                      errorBorder: border,
                      hintText: "Select status",
                      focusedBorder: border,
                    ),
                    alignment: Alignment.bottomCenter,
                    dropdownColor: const Color(0xFFECECED),
                    items: filterType.map<DropdownMenuItem<String>>((String value){
                      return DropdownMenuItem(
                        value: value,
                        child:  Text(value,style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400),)
                      );
                    }).toList(),
                    onChanged: (value){
                      if(value=="Archive leads"){
                        setState(() {
                          selectedValue = "archived";
                        });
                      }else{
                        setState(() {
                          selectedValue = "Closed";
                        });
                      }
                      debugPrint(selectedValue);
                    }
                  ),
                ),
                const SizedBox(height: 25),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.45,
                    child: CustomButton(
                        isBoardAddPage: true,
                        name: 'Submit',
                        onTap: (){
                          if(selectedValue.isEmpty){
                            showErrorToastMessage("Please select filter type");
                          }else{
                            Navigator.pop(context,selectedValue);
                          }
                        }
                    ),
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
