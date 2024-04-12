import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../domain/lead/lead.dart';
import '../../core/custom_button.dart';

class ChatHeaderCard extends StatefulWidget {
  final Lead lead;
  const ChatHeaderCard({Key? key, required this.lead}) : super(key: key);

  @override
  State<ChatHeaderCard> createState() => _ChatHeaderCardState();
}

class _ChatHeaderCardState extends State<ChatHeaderCard> {

  Future<void> callOrSms(String phoneNo,String scheme) async{
    if(scheme=='sms'){
      final Uri url = Uri(scheme: scheme , path: phoneNo,
          queryParameters: <String,String>{
            'body': 'Hi ${widget.lead.name}\n-Dreamlogic'
          });
      await launchUrl(url);
    }else{
      final Uri url = Uri(scheme: scheme , path: phoneNo);
      await launchUrl(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5),
      child: Card(
        shadowColor: Colors.grey.shade300,
        surfaceTintColor: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width*0.92,
          height: 110,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: CustomButton(isChatPage: true, name: 'Call', onTap: () async{
                          await callOrSms(widget.lead.phone!,'tel');
                        }),),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: CustomButton(isChatPage: true, name: 'Message', onTap: () async{
                          await callOrSms(widget.lead.phone!,'sms');
                        }),),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: CustomButton(isChatPage: true, name: 'Whatsapp', onTap: () async{
                          await launchUrl(Uri.parse('https://wa.me/+91${widget.lead.phone!}/?text=Hi ${widget.lead.name}\n-Dreamlogic'));
                        }),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.85,
                height: 50,
                child: Text(widget.lead.title!,style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 13),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
