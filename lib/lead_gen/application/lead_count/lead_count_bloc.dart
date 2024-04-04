import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/lead_count/lead_count.dart';

import '../../domain/lead_count/lead_count_repository.dart';

part 'lead_count_event.dart';
part 'lead_count_state.dart';
part 'lead_count_bloc.freezed.dart';

class LeadCountBloc extends Bloc<LeadCountEvent, LeadCountState> {
  final LeadCountRepository _leadCountRepository;
  LeadCountBloc(this._leadCountRepository) : super(const LeadCountState.initial()) {
    on<LeadCountEvent>(mapEventToState);
  }

  Future<void>mapEventToState(LeadCountEvent event,Emitter<LeadCountState>emit) async{
    emit(const LeadCountState.loadingInProgress());

    final tryGetLeadCount = await _leadCountRepository.getLeadCount(event.context);

    tryGetLeadCount.fold((error){
      emit(LeadCountState.failed(error.message));
    },(leadCount){
      emit(LeadCountState.successLeadCount(leadCount));
    });
  }
}
