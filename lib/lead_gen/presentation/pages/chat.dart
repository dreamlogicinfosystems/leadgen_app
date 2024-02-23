import 'package:flutter/material.dart';
import '../core/custom_appbar.dart';
import '../core/custom_textfield.dart';
import '../widgets/chat/chat_drawer.dart';

class Chat extends StatefulWidget {
  final String name;
  const Chat({Key? key, required this.name}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final _scroll = ScrollController(initialScrollOffset: 0.0,keepScrollOffset: true);
  final _messageController = TextEditingController();
  bool isMessage = false;
  List<String> messages = [
    'Requires  a software',
    'Requires  a software by tomorrow',
    'Requires  a software',
    'Requires  a software by tomorrow',
    'Requires  a software',
    'Requires  a software by tomorrow',
    'Requires  a software',
    'Requires  a software by tomorrow',
    'Requires  a software',
    'Requires  a software by tomorrow',
    'Requires  a software',
    'Requires  a software by tomorrow',
  ];


  @override
  void dispose() {
    _messageController.dispose();
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFF0),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
              title: widget.name,
              centerTitle: true,
              isChatPage: true,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          ),
      ),
      drawer: const Drawer(
        child: ChatDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.78,
              child: ListView.builder(
                  itemCount: messages.length,
                  controller: _scroll,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: IntrinsicHeight(
                        child: Container(
                          constraints: const BoxConstraints.expand(),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(messages[index],style:
                                    const TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                                ),
                                const Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('10-2-2024 by Sparsh'))
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
              ),
            ),
            SizedBox(
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
                  isMessage==false? const Icon(Icons.send,size: 35,color: Colors.grey) :
                  GestureDetector(
                      onTap: (){
                        setState(() {});
                        messages.add(_messageController.text);
                        _messageController.clear();
                              _scroll.animateTo(
                                  _scroll.position.maxScrollExtent+500.0,
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.easeIn
                              );
                      },
                      child: const Icon(Icons.send,size: 35),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10)
            // const SendMessageBox()
          ],
        ),
      ),
    );
  }
}
