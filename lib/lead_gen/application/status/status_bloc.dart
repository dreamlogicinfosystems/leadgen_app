import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/status/status.dart';
import '../../domain/status/status_repository.dart';

part 'status_event.dart';
part 'status_state.dart';
part 'status_bloc.freezed.dart';

class StatusBloc extends Bloc<StatusEvent, StatusState> {
  final StatusRepository _statusRepository;
  StatusBloc(this._statusRepository) : super(const StatusState.initial()) {
    on<StatusEvent>(mapEventToState);
  }

  Future<void>mapEventToState(StatusEvent event,Emitter<StatusState>emit) async{
    await event.map(
        getStatuses: (e) async{
          emit(const StatusState.loadingInProgress());

          final tryGetStatuses = await _statusRepository.getStatuses(e.context);

          tryGetStatuses.fold((error){
            emit(StatusState.failed(error.message));
          },(statusesList){
            emit(StatusState.successStatusesList(statusesList));
          });
        }
    );
  }
}
