part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.tryLogin(String email,String password,BuildContext context) = _tryLogin;

  const factory AuthEvent.registerUser(User user,BuildContext context) = _registerUser;
}
