import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/licence/licence_repository.dart';

part 'licence_event.dart';
part 'licence_state.dart';
part 'licence_bloc.freezed.dart';

class LicenceBloc extends Bloc<LicenceEvent, LicenceState> {
  final LicenceRepository _licenceRepository;
  LicenceBloc(this._licenceRepository) : super(const LicenceState.initial()) {
    on<LicenceEvent>(mapEventToState);
  }

  Future<void>mapEventToState(LicenceEvent event,Emitter<LicenceState>emit) async{
    final checkValidity = await _licenceRepository.checkLicenceValidity(event.context);

    checkValidity.fold((error){
      emit(const LicenceState.failed());
    },(success){
      emit(const LicenceState.success());
    });
  }
}
