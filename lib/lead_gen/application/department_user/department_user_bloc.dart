import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/department_user/department_user.dart';

import '../../domain/department_user/department_user_repo.dart';

part 'department_user_event.dart';
part 'department_user_state.dart';
part 'department_user_bloc.freezed.dart';

class DepartmentUserBloc extends Bloc<DepartmentUserEvent, DepartmentUserState> {
  final DepartmentUserRepository _departmentUserRepository;
  DepartmentUserBloc(this._departmentUserRepository) : super(const DepartmentUserState.initial()) {
    on<DepartmentUserEvent>(mapEventToState);
  }

  Future<void>mapEventToState(DepartmentUserEvent event,Emitter<DepartmentUserState>emit) async{
    await event.map(
        addDepartmentUser: (e) async{
          emit(const DepartmentUserState.loadingInProgress());

          final tryAddDepartUser = await _departmentUserRepository.saveDepartmentUser(
              DepartmentUser(
                name: e.user.name,
                phone: e.user.phone,
                email: e.user.email,
                password: e.user.email,
                departmentId: e.user.departmentId
              ),
              e.context
          );

          tryAddDepartUser.fold((error){
            emit(DepartmentUserState.failed(error.message));
          },(message){
            emit(DepartmentUserState.success(message.successMessage));
          });
        },
        getDepartmentUser: (e) async{
          emit(const DepartmentUserState.loadingInProgress());

          final tryGetDeptUser = await _departmentUserRepository.getDepartmentUser(e.context);

          tryGetDeptUser.fold((error){
            emit(DepartmentUserState.failed(error.message));
          },(user){
            emit(DepartmentUserState.departmentUser(user));
          });
        },
        updateDepartmentUser: (e) async{
          emit(const DepartmentUserState.loadingInProgress());

          final tryUpdateDepartUser = await _departmentUserRepository.saveDepartmentUser(
              DepartmentUser(
                  id: e.user.id,
                  name: e.user.name,
                  phone: e.user.phone,
                  email: e.user.email,
                  password: e.user.email,
                  departmentId: e.user.departmentId
              ),
              e.context
          );

          tryUpdateDepartUser.fold((error){
            emit(DepartmentUserState.failed(error.message));
          },(message){
            emit(DepartmentUserState.success(message.successMessage));
          });
        },
        deleteDepartmentUser: (e) async{
          emit(const DepartmentUserState.loadingInProgress());

          final tryDeletingDeptUser = await _departmentUserRepository.deleteDepartmentUser(e.userId, e.context);

          tryDeletingDeptUser.fold((error){
            emit(DepartmentUserState.failed(error.message));
          },(success){
            emit(DepartmentUserState.success(success.successMessage));
          });
        }
    );
  }
}
