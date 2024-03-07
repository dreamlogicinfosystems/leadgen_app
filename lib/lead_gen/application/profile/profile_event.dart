part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserData(BuildContext context) = _getUserData;

  const factory ProfileEvent.updateUserData(User user,BuildContext context) = _updateUserData;
}
