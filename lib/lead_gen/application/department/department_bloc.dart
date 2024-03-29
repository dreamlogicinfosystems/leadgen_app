import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/department/department.dart';
import '../../domain/department/department_repository.dart';

part 'department_event.dart';
part 'department_state.dart';
part 'department_bloc.freezed.dart';

class DepartmentBloc extends Bloc<DepartmentEvent, DepartmentState> {
  final DepartmentRepository _departmentRepository;
  static List<Department> departmentsList = [];
  static int departmentId = 0;
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
        },
        getDepartments: (e) async{
          emit(const DepartmentState.loadingInProgress());

          final getDepartments = await _departmentRepository.getDepartment(e.context);

          getDepartments.fold((error){
            emit(DepartmentState.failed(error.message));
          },(departmentList){
            departmentsList = departmentList;
            emit(DepartmentState.departmentList(departmentList));
          });
        },
        updateDepartment: (e) async{
          emit(const DepartmentState.loadingInProgress());

          final tryUpdateDept = await _departmentRepository.updateDepartment(
              Department(
                id: e.department.id,
                departmentName: e.department.departmentName
              ),
              e.context
          );

          tryUpdateDept.fold((error){
            emit(DepartmentState.failed(error.message));
          },(message){
            emit(DepartmentState.success(message.successMessage));
          });
        },
        deleteDepartment: (e) async{
          emit(const DepartmentState.loadingInProgress());

          final tryDelDet = await _departmentRepository.deleteDepartment(e.id,e.context);

          tryDelDet.fold((error){
            emit(DepartmentState.failed(error.message));
          },(message){
            emit(DepartmentState.success(message.successMessage));
          });
        },
        setDeptId: (e) async{
          if(e.id.toString().isNotEmpty){
            departmentId = e.id;
          }
        }
    );
  }

  static int getDepartmentCount(){
    int count = departmentsList.length;

    return count;
  }


}
