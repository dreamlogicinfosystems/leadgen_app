import 'dart:io';

// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/auth/user_db.dart';
import '../../domain/auth/auth_repository.dart';
import '../../domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  static final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  static String device = '';
  static String fcmToken = '';
  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<AuthEvent>(mapEventToState);
  }

  Future<void>mapEventToState(AuthEvent event,Emitter<AuthState>emit) async{
    await event.map(
        registerUser: (e) async{
          emit(const AuthState.loadingInProgress());

          final tryRegister = await _authRepository.registerUser(
            User(
              name: e.user.name,
              phoneNumber: e.user.phoneNumber,
              email: e.user.email,
              password: e.user.password,
              businessName: e.user.businessName,
              fcmToken: fcmToken,
              device: device
            ),
            e.context
          );

          tryRegister.fold((error){
            emit(AuthState.failed(error.message));
          },(success){
            emit(AuthState.success(success.successMessage));
          });
        },
        tryLogin: (e) async{
          emit(const AuthState.loadingInProgress());

          final tryLogin = await _authRepository.tryLogin(e.email,e.password,fcmToken,device,e.context);

          tryLogin.fold((error){
            emit(AuthState.failed(error.message));
          },(success){
            emit(AuthState.success(success.successMessage));
          });
        },
        logOut: (e) async {
          emit(const AuthState.loadingInProgress());

          final tryLogOut = await _authRepository.doLogOut(e.context);

          tryLogOut.fold((error){
            emit(AuthState.failed(error.message));
          },(success){
            emit(AuthState.success(success.successMessage));
          });
        },
        verifyEmail: (e) async{
          emit(const AuthState.loadingInProgress());

          final tryEmailVerify = await _authRepository.verifyEmailAddress(e.email,e.context);

          tryEmailVerify.fold((error){
            emit(AuthState.failed(error.message));
          },(success){
            emit(AuthState.success(success.successMessage));
          });
        },
        verifyOtp: (e) async{
          emit(const AuthState.loadingInProgress());

          final tryVerifyOtp = await _authRepository.verifyOTP(e.otp,e.context);

          tryVerifyOtp.fold((error){
            emit(AuthState.failed(error.message));
          },(success){
            emit(AuthState.success(success.successMessage));
          });
        },
        resetPassword: (e) async{
          emit(const AuthState.loadingInProgress());

          final tryPassChange = await _authRepository.forgotPassword(e.password,e.context);

          tryPassChange.fold((error){
            emit(AuthState.failed(error.message));
          },(success){
            emit(AuthState.success(success.successMessage));
          });
        },
        deleteAccount: (e) async{
          emit(const AuthState.loadingInProgress());

          final tryDeletingAcc = await _authRepository.deleteAccountRequest(e.id, e.context);

          tryDeletingAcc.fold((error){
            emit(AuthState.failed(error.message));
          },(success){
            emit(AuthState.success(success.successMessage));
          });
        },
    );
  }

  static Future<void>getFcmTokenAndDevice() async{
    final firebaseToken = await _firebaseMessaging.getToken();
    if(firebaseToken!=null){
      fcmToken = firebaseToken;
      print("firebase token: $firebaseToken");
    }

    print("firebase token: $firebaseToken");

    if(Platform.isAndroid){
      device = 'android';
    }else if(Platform.isIOS){
      device = 'Ios';
    }
  }

  static Future<int>checkIfUserExist() async{
    UserDBHelper userDBHelper = UserDBHelper();

    final data = await userDBHelper.getUserData();

    if(data!.isEmpty){
      return 0;
    }else{
      return data.length;
    }
  }
}
