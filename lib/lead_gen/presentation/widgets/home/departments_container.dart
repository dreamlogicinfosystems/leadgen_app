import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../../../constants/no_internet_dialog.dart';

class DepartmentsContainer extends StatefulWidget {
  const DepartmentsContainer({Key? key}) : super(key: key);

  @override
  State<DepartmentsContainer> createState() => _DepartmentsContainerState();
}

class _DepartmentsContainerState extends State<DepartmentsContainer> {
  final List<String> departments = ['App','Web','Marketing'];
  bool appClicked = false;
  bool webClicked = false;
  bool marketingClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(7)),
        border: Border.all(
            width: 0.1
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Row(
            children: [
              GestureDetector(
                onTap: () async{
                  setState(() {
                    appClicked = !appClicked;
                    webClicked = false;
                    marketingClicked = false;
                  });
                },
                child: Container(
                  width: 144,
                  height: 50,
                  decoration: BoxDecoration(
                    color: appClicked==true? Colors.blue : Colors.green,
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    border: Border.all(
                      width: 0.5,
                    ),
                  ),
                  child: Center(
                    child: Text(departments[0],style:
                    const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),),
                  ),
                ),
              ),
              const SizedBox(width: 18),
              GestureDetector(
                onTap: (){
                  setState(() {
                    webClicked = !webClicked;
                    appClicked = false;
                    marketingClicked = false;
                  });
                },
                child: Container(
                  width: 144,
                  height: 50,
                  decoration: BoxDecoration(
                    color: webClicked==true? Colors.blue : Colors.green,
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    border: Border.all(
                      width: 0.5,
                    ),
                  ),
                  child: Center(
                    child: Text(departments[1],style:
                    const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),),
                  ),
                ),
              ),
              const SizedBox(width: 18),
              GestureDetector(
                onTap: (){
                  setState(() {
                    marketingClicked = !marketingClicked;
                    appClicked = false;
                    webClicked = false;
                  });
                },
                child: Container(
                  width: 144,
                  height: 50,
                  decoration: BoxDecoration(
                    color: marketingClicked==true? Colors.blue : Colors.green,
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    border: Border.all(
                      width: 0.5,
                    ),
                  ),
                  child: Center(
                    child: Text(departments[2],style:
                    const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),),
                  ),
                ),
              ),
              // ...List.generate(3, (index) {
              //   return Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 10),
              //     child: GestureDetector(
              //       onTap: (){
              //         setState(() {
              //           clicked[index] = !clicked[index];
              //         });
              //       },
              //       child: Container(
              //         width: 144,
              //         height: 50,
              //         decoration: BoxDecoration(
              //           color: clicked[index]==true? Colors.blue : Colors.green,
              //           borderRadius: const BorderRadius.all(Radius.circular(7)),
              //           border: Border.all(
              //             width: 0.5,
              //           ),
              //         ),
              //         child: Center(
              //           child: Text(departments[index],style:
              //           const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),),
              //         ),
              //       ),
              //     ),
              //   );
              // }),
            ],
          ),
        ),
      ),
    );
  }
}
