import 'package:flutter/material.dart';

import '../../core/custom_textfield.dart';

class SendMessageBox extends StatefulWidget {
  const SendMessageBox({Key? key}) : super(key: key);

  @override
  State<SendMessageBox> createState() => _SendMessageBoxState();
}

class _SendMessageBoxState extends State<SendMessageBox> {
  final _messageController = TextEditingController();
  bool isMessage = false;

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 300,
            child: CustomTextField(
              controller: _messageController,
              hintText: 'Enter message',
              keyBoardType: TextInputType.text,
              isChatPage: true,
              onChanged: (value){
                if(value!='' || value.trim()!=''){
                  setState(() {
                    isMessage = true;
                  });
                }else{
                  setState(() {
                    isMessage = false;
                  });
                }
              },
            ),
          ),
          isMessage==false? const Icon(Icons.send,size: 35,color: Colors.grey) : const Icon(Icons.send,size: 35)
        ],
      ),
    );
  }
}
