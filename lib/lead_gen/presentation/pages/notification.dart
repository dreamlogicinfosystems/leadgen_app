import 'package:flutter/material.dart';

import '../core/custom_appbar.dart';
import '../widgets/notification/notification_page_body.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight*1),
        child: CustomAppBar(
          title: 'Notification',
          centerTitle: true,
          isArchivePage: true,
          automaticallyImplyLeading: true,
          iconColor: Colors.black,
        ),
      ),
      body: NotificationPageBody(),
    );
  }
}
