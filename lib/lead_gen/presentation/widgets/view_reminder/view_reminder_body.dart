import 'package:flutter/material.dart';

class ViewReminderBody extends StatefulWidget {
  const ViewReminderBody({Key? key}) : super(key: key);

  @override
  State<ViewReminderBody> createState() => _ViewReminderBodyState();
}

class _ViewReminderBodyState extends State<ViewReminderBody> {
  bool isReminder = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          isReminder==false? SizedBox(
            height: MediaQuery.of(context).size.height*0.80,
            child: const Center(
              child: Text("No Reminder's",style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w400
              ),),
            ),
          ):
          ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    height: 90,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 15),
                          child: Container(
                            height: 75,
                            width: MediaQuery.of(context).size.width*0.20,
                            decoration: BoxDecoration(
                                color: Colors.red[100],
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: const Icon(Icons.alarm,size: 35,),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.46,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Reminder",style: TextStyle(
                                  fontSize: 17,fontWeight: FontWeight.w600
                              ),),
                              const SizedBox(height: 2),
                              ConstrainedBox(
                                constraints: const BoxConstraints(
                                    maxHeight: 60
                                ),
                                child: const Text("Reminder to call a Client",style: TextStyle(
                                    fontSize: 14
                                ),),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.red[100],
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: const Icon(Icons.cancel,size: 20,),
                        ),
                      ],
                    ),
                  ),
                );
              }
          ),
        ],
      ),
    );
  }
}
