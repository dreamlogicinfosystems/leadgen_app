import 'package:get_it/get_it.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/data/auth/auth_repo_impl.dart';
import 'package:lead_gen/lead_gen/data/reminder/reminder_repo_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'lead_gen/constants/api.dart';
import 'lead_gen/constants/shared_preference.dart';
import 'lead_gen/data/auth/auth_api_data_source.dart';
import 'lead_gen/data/reminder/local_notification_handler.dart';
import 'lead_gen/data/reminder/reminder_api_data_source.dart';
import 'lead_gen/domain/auth/auth_repository.dart';
import 'lead_gen/domain/reminder/reminder_repository.dart';

final sl = GetIt.instance;

void serviceLocator() async{
  //Bloc
  sl.registerFactory<ReminderBloc>(() => ReminderBloc(sl()));

  sl.registerFactory<AuthBloc>(() => AuthBloc(sl()));

  //repo
  sl.registerLazySingleton<ReminderRepository>(() => ReminderRepositoryImpl(sl()));

  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));


  //data source
  sl.registerLazySingleton<ReminderApiDataSource>(() => ReminderApiDataSource(sl()));

  sl.registerLazySingleton<LocalNotificationHandler>(() => LocalNotificationHandler());

  sl.registerLazySingleton<AuthApiDataSource>(() => AuthApiDataSource(sl(),sl()));

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSource(sl()));

  sl.registerLazySingleton<ApiMethods>(() => ApiMethods(sl()));
}