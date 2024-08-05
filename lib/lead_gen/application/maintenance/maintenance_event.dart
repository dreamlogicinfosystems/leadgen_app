part of 'maintenance_bloc.dart';

@freezed
class MaintenanceEvent with _$MaintenanceEvent {
  const factory MaintenanceEvent.checkMaintenance(BuildContext context) = _checkMaintenance;
}
