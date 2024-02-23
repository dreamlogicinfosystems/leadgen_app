import 'package:flutter/material.dart';

class CompleteProfileDialog extends StatefulWidget {
  const CompleteProfileDialog({Key? key}) : super(key: key);

  @override
  State<CompleteProfileDialog> createState() => _CompleteProfileDialogState();
}

class _CompleteProfileDialogState extends State<CompleteProfileDialog> {
  @override
  Widget build(BuildContext context) {
    return const Dialog(
      child: Column(
        children: [
          Text("Complete Your Profile")
        ],
      ),
    );
  }
}
