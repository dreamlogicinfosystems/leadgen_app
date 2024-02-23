import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../injections.dart';
import '../../pages/add_reminder.dart';
import '../../pages/chat.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {

  Future<void> callOrSms(String phoneNo,String scheme) async{
    if(scheme=='sms'){
      final Uri url = Uri(scheme: scheme , path: phoneNo,
          queryParameters: <String,String>{
            'body': 'Hi Chetan\n-Dreamlogic'
          });
      await launchUrl(url);
    }else{
      final Uri url = Uri(scheme: scheme , path: phoneNo);
      await launchUrl(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.69,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(
            width: 0.1
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 0.5
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10,right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Kunal Dhopavkar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                        const SizedBox(height: 5,),
                        const Text("14-02-2024",style: TextStyle(fontSize: 14)),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: ()async{
                                  await callOrSms('9960132706','tel');
                                },
                                child: const CircleAvatar(maxRadius: 23,child: Icon(
                                  Icons.phone)
                                )),
                            GestureDetector(
                                onTap: () async{
                                  await callOrSms('9960132706','sms');
                                },
                                child: const CircleAvatar(maxRadius: 23,child: FaIcon(FontAwesomeIcons.envelope))),
                            GestureDetector(
                                onTap: () async{
                                  await launchUrl(Uri.parse('https://wa.me/+919960132706/?text=Hi Chetan\n-Dreamlogic'));
                                },
                                child: const CircleAvatar(maxRadius: 23,child: FaIcon(FontAwesomeIcons.whatsapp,size: 30,color: Color.fromRGBO(7, 144, 64, 1),))),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => BlocProvider(
                                      create: (context) => sl<ReminderBloc>(),
                                      child: const AddReminder())));
                                },
                                child: const CircleAvatar(maxRadius: 23,child: Icon(Icons.alarm,size: 28,))),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Chat(name: 'Sparsh',)));
                                },
                                child: const CircleAvatar(maxRadius: 23,child: Icon(Icons.messenger_outline_sharp)))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
