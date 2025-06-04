import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead_count/lead_count_bloc.dart';
import 'package:lead_gen/lead_gen/application/maintenance/maintenance_bloc.dart';

import 'injections.dart';
import 'lead_gen/data/reminder/local_notification_handler.dart';
import 'lead_gen/helper/firebase_data.dart';
import 'lead_gen/helper/firebase_notifications.dart';
import 'lead_gen/presentation/pages/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: FirebaseData.apiKey,
      appId: FirebaseData.appId,
      messagingSenderId: FirebaseData.messagingSenderId,
      projectId: FirebaseData.projectId,
      storageBucket: FirebaseData.storageBucket
    )
  );

  await LocalNotificationHandler().init();
  await FCM().init();
  await serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AuthBloc>(),
        ),
        BlocProvider(
            create: (context) => sl<DepartmentBloc>(),
        ),
        BlocProvider(
            create: (context) => sl<LeadCountBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<MaintenanceBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nudge',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

