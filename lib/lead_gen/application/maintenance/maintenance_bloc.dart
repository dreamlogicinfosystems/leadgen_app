import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/maintenance/maintenance.dart';

import '../../domain/maintenance/maintenance_repo.dart';

part 'maintenance_event.dart';
part 'maintenance_state.dart';
part 'maintenance_bloc.freezed.dart';

class MaintenanceBloc extends Bloc<MaintenanceEvent, MaintenanceState> {
  final MaintenanceRepository _maintenanceRepository;
  MaintenanceBloc(this._maintenanceRepository) : super(const MaintenanceState.initial()) {
    on<MaintenanceEvent>(mapEventToState);
  }

  Future<void>mapEventToState(MaintenanceEvent e, Emitter<MaintenanceState>emit) async{
    emit(const MaintenanceState.loadingInProgress());

    final getMaintenanceData = await _maintenanceRepository.checkMaintenance(e.context);

    getMaintenanceData.fold((error){
      emit(MaintenanceState.failure(error.message));
    },(maintenanceData){
      emit(MaintenanceState.success(maintenanceData));
    });
  }
}
