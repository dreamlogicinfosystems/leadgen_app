import 'package:flutter/material.dart';

import '../widgets/chat/close_lead_dialog.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final Color iconColor;
  final bool? isChatPage;

  const CustomAppBar({Key? key,
    required this.title,
    required this.centerTitle,
    required this.automaticallyImplyLeading, required this.iconColor, this.isChatPage
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme:  IconThemeData(
        color: widget.iconColor,
      ),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title,style: const TextStyle(fontWeight: FontWeight.w500)),
      centerTitle: widget.centerTitle,
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      actions: [
        widget.isChatPage==true?  Padding(
          padding: const EdgeInsets.only(right: 15,top: 5),
          child: GestureDetector(
               onTap: (){
                 showDialog(context: context, builder: (context) => const CloseLeadDialog());
               },
              child: const Icon(Icons.exit_to_app),
          ),
        ): const Text('')
      ],
    );
  }
}
