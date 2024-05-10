part of 'licence_bloc.dart';

@freezed
class LicenceEvent with _$LicenceEvent {
  const factory LicenceEvent.checkLicence(BuildContext context) = _checkLicence;
}
