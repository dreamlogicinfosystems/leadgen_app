import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/auth/auth_repository.dart';
import '../../domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
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
              businessName: e.user.businessName
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

          final tryLogin = await _authRepository.tryLogin(e.email,e.password,e.context);

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
    );
  }
}
