part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.tryLogin(String email,String password,BuildContext context) = _tryLogin;

  const factory AuthEvent.registerUser(User user,BuildContext context) = _registerUser;

  const factory AuthEvent.logOut(BuildContext context) = _logOut;

  const factory AuthEvent.verifyEmail(String email,BuildContext context) = _verifyEmail;

  const factory AuthEvent.verifyOtp(String otp,BuildContext context) = _verifyOtp;

  const factory AuthEvent.resetPassword(String password,BuildContext context) = _resetPassword;
}
