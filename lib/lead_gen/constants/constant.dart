import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';

showToastMessage(String message){
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey.shade100,
      textColor: Colors.black,
      fontSize: 17.0
  );
}

showErrorToastMessage(String message){
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 17.0
  );
}


showLoader(BuildContext context){
  showDialog(
      context: context,
      builder: (context){
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
  );
}

showAlertDialog(BuildContext context,String page,int? id){
  showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          surfaceTintColor: const Color(0xFFECECED),
          title: Text("Are you sure?",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
          actions: [
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                        height: 45,
                        child: CustomButton(
                            name: 'Yes',
                            isDeletePage: page!='logout'? true : false,
                            onTap: (){
                              if(page=="logout"){
                                context.read<AuthBloc>().add(AuthEvent.logOut(context));
                              }else if(page=="board"){
                                debugPrint("deletion id: $id");
                                context.read<DepartmentBloc>().add(DepartmentEvent.deleteDepartment(id!, context));
                              }
                            }
                        ),
                    ),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: SizedBox(
                        height: 45,
                        child: CustomButton(
                            name: 'No',
                            onTap: (){
                              Navigator.pop(context);
                            })
                    ),
                ),
              ],
            ),
          ],
        );
      }
  );
}

simpleDialog(BuildContext context){
  showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          surfaceTintColor: Colors.white,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                  color: Colors.white
              )
          ),
          children: [
            SizedBox(
                height: 125,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text("Please add department first!",style: TextStyle(
                          fontSize: 17
                      ),),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: SizedBox(
                        height: 45,
                        child: CustomButton(
                            name: 'OK',
                            onTap: (){
                              Navigator.pop(context);
                            }
                        ),
                      ),
                    )
                  ],
                )
            ),
          ],
        );
      }
  );
}

simplifyDate(String date){
  DateTime dateTime = DateTime.parse(date);

  final formattedDate = DateFormat('dd-MM-yyyy').format(dateTime);

  return formattedDate;
}


String getDaySuffix(int day){
  if(day>=11 && day<=13){
    return 'th';
  }
  switch(day%10){
    case 1: return 'st';
    case 2: return 'nd';
    case 3: return 'rd';
    case 4: return 'th';
    default: return 'th';
  }
}

modifyDate(String stringDate){
  final date = DateTime.parse(stringDate);

  final formattedDate = DateFormat("d'${getDaySuffix(date.day)}' MMM yy").format(date);

  return formattedDate;
}


convertUTCtoLocalTime(String utcDateTime){
  final utcDate = DateTime.parse(utcDateTime);

  final localDateTime = utcDate.toLocal();

  final localTime = DateFormat.Hm().format(localDateTime);

  return localTime;
}


convertDateToReadableDate(String stringDate){
  final date = DateTime.parse(stringDate);

  final formattedDate = DateFormat('EEE, MMM yy').format(date);

  return formattedDate;
}