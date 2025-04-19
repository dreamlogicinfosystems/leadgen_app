import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/domain/lead/chat.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/chat/bottom_sheet.dart';
import 'package:lead_gen/lead_gen/presentation/widgets/chat/chat_header.dart';
import '../../constants/constant.dart';
import '../../domain/lead/chat_details.dart';
import '../../domain/lead/lead.dart';
import '../core/custom_appbar.dart';
import '../core/custom_textfield.dart';

class ChatPage extends StatefulWidget {
  final Lead lead;
  const ChatPage({Key? key, required this.lead}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _scroll = ScrollController(initialScrollOffset: 0.0,keepScrollOffset: true);
  final _messageController = TextEditingController();
  bool isMessage = false;

  @override
  void dispose() {
    _messageController.dispose();
    _scroll.dispose();
    super.dispose();
  }

  @override
  void initState() {
    context.read<LeadBloc>().add(LeadEvent.getLeadChat(widget.lead.id!, context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffEFEFF0),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
              title: widget.lead.name!,
              centerTitle: true,
              isChatPage: true,
              automaticallyImplyLeading: true,
              iconColor: Colors.black
          ),
      ),
      body: Column(
        children: [
          ChatHeaderCard(lead: widget.lead),
          const SizedBox(height: 10),
          BlocConsumer<LeadBloc, LeadState>(
            listener: (context, state){
              state.maybeWhen(
                successChatList: (chat){
                  //To point last element is list
                  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                    _scroll.jumpTo(_scroll.position.maxScrollExtent);
                  });
                },
                orElse: (){},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                successChatList: (chatList){
                  return _chatSuccessDataView(height, chatList);
                },
                orElse: (){
                  return _chatLoadingView(height);
                }
              );
            },
          ),
          _bottomView(),
          // const SizedBox(height: 10)
          // const SendMessageBox()
        ],
      ),
    );
  }

  Widget _chatLoadingView(double height) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1
                )
            )
        ),
        height: widget.lead.phone != null ? height*0.63 : height*0.71,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget _chatSuccessDataView(double height, List<Chat> chatList) {
    return Expanded(
      child: Container(
        height: widget.lead.phone != null ? height*0.62 : height*0.71,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(color: Colors.grey.shade300, width: 1)
            )
        ),
        child: ListView.builder(
            controller: _scroll,
            itemCount: chatList.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context,int index){
              return _chatListView(chatList, index);
            }
        ),
      ),
    );
  }

  Widget _chatListView(List<Chat> chatList, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Column(
        children: [
          _chatDateView(chatList, index),
          const SizedBox(height: 10),
          ChatDetailsDisplayer(chatDetails: chatList[index].chatData!)
        ],
      ),
    );
  }

  Widget _chatDateView(List<Chat> chatList, int index) {
    return Container(
      width: 105,
      height: 22,
      decoration: BoxDecoration(
          color: const Color(0xFFDDDDE9),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Center(child: Text(convertDateToReadableDate(chatList[index].date!),style:
      GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: const Color(0xFF3C3C43)),)),
    );
  }

  Container _bottomView() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF6F6F6),
        border: Border(
            top: BorderSide(
              color: Color(0xFF8E8E93),
              width: 0.5
            )
        )
      ),
      // height: MediaQuery.of(context).size.height*0.085,
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 15,top: 15,bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _optionsView(),
            _messageTypeView(),
            const SizedBox(width: 10),
            _sendMessageView(),
          ],
        ),
      ),
    );
  }

  Widget _sendMessageView() {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.04,
      width: 25,
      child: GestureDetector(
        onTap: () {
          //if message field is not empty than call api
          if(_messageController.text.trim() != "") {
            //To close the keyboard
            FocusScope.of(context).requestFocus(FocusNode());

            context.read<LeadBloc>().add(LeadEvent.addLeadChat(
              Lead(
                id: widget.lead.id,
                message: _messageController.text.trim()
              ), context),
            );

            _messageController.clear();
          }
        },
        child: const Icon(Icons.send,size: 28)
      ),
    );
  }

  Widget _messageTypeView() {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.7,
        child: CustomTextField(
          controller: _messageController,
          hintText: '',
          minLines: 1,
          maxLines: 6,
          keyBoardType: TextInputType.multiline,
          isChatPage: true,
        ),
      ),
    );
  }

  GestureDetector _optionsView() {
    return GestureDetector(
      onTap:(){
        displayBottomSheet(context,widget.lead.name!,widget.lead.id!,widget.lead.showStatus!,widget.lead);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.04,
        width: 30,
        child: const Icon(Icons.add,color: Colors.blue,size: 25,),
      ),
    );
  }
}


class ChatDetailsDisplayer extends StatefulWidget {
  final List<ChatDetails> chatDetails;
  const ChatDetailsDisplayer({super.key, required this.chatDetails});

  @override
  State<ChatDetailsDisplayer> createState() => _ChatDetailsDisplayerState();
}

class _ChatDetailsDisplayerState extends State<ChatDetailsDisplayer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.chatDetails.length,
      itemBuilder: (BuildContext context, int index) {
        return Align(
          alignment: DepartmentBloc.userName==widget.chatDetails[index].name? Alignment.centerRight : Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: DepartmentBloc.userName==widget.chatDetails[index].name? const Color(0xFFDCF7C5) : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: DepartmentBloc.userName==widget.chatDetails[index].name? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    Text(widget.chatDetails[index].message!,style:
                    GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400),),
                    Text("${convertUTCtoLocalTime(widget.chatDetails[index].createdAt!)} by ${widget.chatDetails[index].name}",style:
                    GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

