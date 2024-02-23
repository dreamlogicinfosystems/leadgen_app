import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_button.dart';

showNoInternalDialog(BuildContext context){
  showDialog(
      context: context,
      builder: (context){
        return Dialog(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.white
            )
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/images/no_internet.jpg'),
              ),
              const SizedBox(height: 10),
              const Text("NO INTERNET",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("You are not connected to the internet",textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16)),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 20),
                child: CustomButton(
                    name: 'Close',
                    onTap: (){
                      Navigator.pop(context);
                    }
                ),
              )
            ],
          ),
        );
      }
  );
}