import 'package:get_it/get_it.dart';
import 'package:lead_gen/lead_gen/application/auth/auth_bloc.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/application/department_user/department_user_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead/lead_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead_count/lead_count_bloc.dart';
import 'package:lead_gen/lead_gen/application/lead_info_extractor/lead_info_extractor_bloc.dart';
import 'package:lead_gen/lead_gen/application/reminder/reminder_bloc.dart';
import 'package:lead_gen/lead_gen/constants/api_endpoint.dart';
import 'package:lead_gen/lead_gen/data/auth/auth_repo_impl.dart';
import 'package:lead_gen/lead_gen/data/auth/user_db.dart';
import 'package:lead_gen/lead_gen/data/customer/customer_repo_impl.dart';
import 'package:lead_gen/lead_gen/data/department/department_repo_impl.dart';
import 'package:lead_gen/lead_gen/data/department_user/department_user_repo_impl.dart';
import 'package:lead_gen/lead_gen/data/licence/licence_repo_impl.dart';
import 'package:lead_gen/lead_gen/data/maintenance/maintenance_repo_impl.dart';
import 'package:lead_gen/lead_gen/data/profile/profile_repo_impl.dart';
import 'package:lead_gen/lead_gen/data/reminder/reminder_repo_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'lead_gen/application/customer/customer_bloc.dart';
import 'lead_gen/application/licence/licence_bloc.dart';
import 'lead_gen/application/maintenance/maintenance_bloc.dart';
import 'lead_gen/application/profile/profile_bloc.dart';
import 'lead_gen/constants/api.dart';
import 'lead_gen/constants/shared_preference.dart';
import 'lead_gen/data/auth/auth_api_data_source.dart';
import 'lead_gen/data/customer/customer_data_source.dart';
import 'lead_gen/data/department/department_data_source.dart';
import 'lead_gen/data/department_user/department_user_data_source.dart';
import 'lead_gen/data/lead/lead_data_source.dart';
import 'lead_gen/data/lead/lead_repo_impl.dart';
import 'lead_gen/data/lead_count/lead_count_data_source.dart';
import 'lead_gen/data/lead_count/lead_count_repo_impl.dart';
import 'lead_gen/data/licence/licence_data_source.dart';
import 'lead_gen/data/maintenance/maintenance_data_source.dart';
import 'lead_gen/data/profile/profile_data_source.dart';
import 'lead_gen/data/reminder/local_notification_handler.dart';
import 'lead_gen/data/reminder/reminder_api_data_source.dart';
import 'lead_gen/domain/auth/auth_repository.dart';
import 'lead_gen/domain/customer/customer_repository.dart';
import 'lead_gen/domain/department/department_repository.dart';
import 'lead_gen/domain/department_user/department_user_repo.dart';
import 'lead_gen/domain/lead/lead_repository.dart';
import 'lead_gen/domain/lead_count/lead_count_repository.dart';
import 'lead_gen/domain/licence/licence_repository.dart';
import 'lead_gen/domain/maintenance/maintenance_repo.dart';
import 'lead_gen/domain/profile/profile_repository.dart';
import 'lead_gen/domain/reminder/reminder_repository.dart';

final sl = GetIt.instance;

serviceLocator() async{
  //Bloc
  sl.registerFactory<ReminderBloc>(() => ReminderBloc(sl()));

  sl.registerFactory<AuthBloc>(() => AuthBloc(sl()));

  sl.registerFactory<ProfileBloc>(() => ProfileBloc(sl()));

  sl.registerFactory<DepartmentBloc>(() => DepartmentBloc(sl()));

  sl.registerFactory<DepartmentUserBloc>(() => DepartmentUserBloc(sl()));

  sl.registerFactory<LeadBloc>(() => LeadBloc(sl()));

  sl.registerFactory<LeadInfoExtractorBloc>(() => LeadInfoExtractorBloc(sl()));

  sl.registerFactory<CustomerBloc>(() => CustomerBloc(sl()));

  sl.registerFactory<LeadCountBloc>(() => LeadCountBloc(sl()));

  sl.registerFactory<LicenceBloc>(() => LicenceBloc(sl()));

  sl.registerFactory<MaintenanceBloc>(() => MaintenanceBloc(sl()));

  //repo
  sl.registerLazySingleton<LeadCountRepository>(() => LeadCountRepositoryImpl(sl()));

  sl.registerLazySingleton<CustomerRepository>(() => CustomerRepositoryImpl(sl()));

  sl.registerLazySingleton<LeadRepository>(() => LeadRepositoryImpl(sl()));

  sl.registerLazySingleton<DepartmentUserRepository>(() => DepartmentUserRepositoryImpl(sl()));

  sl.registerLazySingleton<ReminderRepository>(() => ReminderRepositoryImpl(sl()));

  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));

  sl.registerLazySingleton<ProfileRepository>(() => ProfileRepositoryImpl(sl()));

  sl.registerLazySingleton<DepartmentRepository>(() => DepartmentRepositoryImpl(sl()));

  sl.registerLazySingleton<LicenceRepository>(() => LicenceRepositoryImpl(sl(),sl()));

  sl.registerLazySingleton<MaintenanceRepository>(() => MaintenanceRepoImpl(sl()));

  //data source
  sl.registerLazySingleton<LeadCountDataSource>(() => LeadCountDataSource(sl(),sl()));

  sl.registerLazySingleton<CustomerDataSource>(() => CustomerDataSource(sl(),sl()));

  sl.registerLazySingleton<LicenceDataSource>(() => LicenceDataSource(sl(),sl(),sl()));

  sl.registerLazySingleton<LeadDataSource>(() => LeadDataSource(sl(),sl(),sl()));

  sl.registerLazySingleton<DepartmentUserDataSource>(() => DepartmentUserDataSource(sl(),sl()));

  sl.registerLazySingleton<ReminderApiDataSource>(() => ReminderApiDataSource(sl(),sl(),sl()));

  sl.registerLazySingleton<LocalNotificationHandler>(() => LocalNotificationHandler());

  sl.registerLazySingleton<AuthApiDataSource>(() => AuthApiDataSource(sl(),sl(),sl(),sl()));

  sl.registerLazySingleton<ProfileDataSource>(() => ProfileDataSource(sl(),sl(),sl()));

  sl.registerLazySingleton<DepartmentDataSource>(() => DepartmentDataSource(sl(),sl()));

  sl.registerLazySingleton<MaintenanceDataSource>(() => MaintenanceDataSource(sl()));

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSource(sl()));

  sl.registerLazySingleton<UserDBHelper>(() => UserDBHelper());

  sl.registerLazySingleton<ApiEndPoint>(() => ApiEndPoint());

  sl.registerLazySingleton<ApiMethods>(() => ApiMethods(sl()));
}