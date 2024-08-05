part of 'maintenance_bloc.dart';

@freezed
class MaintenanceState with _$MaintenanceState {
  const factory MaintenanceState.initial() = _Initial;

  const factory MaintenanceState.loadingInProgress() = _loadingInProgress;

  const factory MaintenanceState.success(Maintenance maintenance) = _success;

  const factory MaintenanceState.failure(String error) = _failure;
}
