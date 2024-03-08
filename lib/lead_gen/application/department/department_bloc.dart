import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/department/department_repository.dart';

part 'department_event.dart';
part 'department_state.dart';
part 'department_bloc.freezed.dart';

class DepartmentBloc extends Bloc<DepartmentEvent, DepartmentState> {
  final DepartmentRepository _departmentRepository;
  DepartmentBloc(this._departmentRepository) : super(const DepartmentState.initial()) {
    on<DepartmentEvent>(mapEventToState);
  }

  Future<void>mapEventToState(DepartmentEvent event,Emitter<DepartmentState>emit) async{
    await event.map(
        createDepartment: (e) async{
          emit(const DepartmentState.loadingInProgress());

          final tryCreateDepartment = await _departmentRepository.createDepartment(e.departName, e.context);

          tryCreateDepartment.fold((error){
            emit(DepartmentState.failed(error.message));
          },(message){
            emit(DepartmentState.success(message.successMessage));
          });
        }
    );
  }
}
