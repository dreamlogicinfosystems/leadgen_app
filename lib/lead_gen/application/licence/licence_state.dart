part of 'licence_bloc.dart';

@freezed
class LicenceState with _$LicenceState {
  const factory LicenceState.initial() = _Initial;

  const factory LicenceState.success() = _success;

  const factory LicenceState.failed() = _failed;
}
