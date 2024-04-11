import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/presentation/pages/add_reminder.dart';
import 'close_lead_dialog.dart';

class ChatDrawer extends StatefulWidget {
  const ChatDrawer({Key? key}) : super(key: key);

  @override
  State<ChatDrawer> createState() => _ChatDrawerState();
}

class _ChatDrawerState extends State<ChatDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.inversePrimary,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.2,
            child: const Center(
              child: Text("Lead Gen",style:
              TextStyle(
                fontSize: 25,fontWeight: FontWeight.w600
               ),
              ),
            ),
          ),
          Container(
            color: Colors.purpleAccent.shade200,
            height: 2,
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const AddReminder(userName: '',)));
            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.75,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.inversePrimary,
                  border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
              ),
              child: const Center(child: Text("Add Reminder",style: TextStyle(fontSize: 16),)),
            ),
          ),
          const SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              // showDialog(context: context, builder: (context) => const CloseLeadDialog(leadId: ,));
            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.75,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.inversePrimary,
                  border: Border.all(color: Colors.purpleAccent.shade200,width: 1)
              ),
              child: const Center(child: Text("Close Lead",style: TextStyle(fontSize: 16))),
            ),
          ),
        ],
      ),
    );
  }
}
