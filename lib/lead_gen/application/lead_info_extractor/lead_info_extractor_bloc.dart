import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/lead/lead_details.dart';
import 'package:lead_gen/lead_gen/domain/lead/lead_repository.dart';

part 'lead_info_extractor_event.dart';
part 'lead_info_extractor_state.dart';
part 'lead_info_extractor_bloc.freezed.dart';

class LeadInfoExtractorBloc extends Bloc<LeadInfoExtractorEvent, LeadInfoExtractorState> {
  final LeadRepository _leadRepository;
  LeadInfoExtractorBloc(this._leadRepository) : super(const LeadInfoExtractorState.initial()) {
    on<LeadInfoExtractorEvent>(mapEventToState);
  }

  Future<void>mapEventToState(LeadInfoExtractorEvent e, Emitter<LeadInfoExtractorState>emit) async {
    emit(const LeadInfoExtractorState.loadingInProgress());

    await _leadRepository.getLeadDetailsFromMessage(e.query, e.context).then((failureOrSuccess) {
      failureOrSuccess.fold(
          (error) => emit(LeadInfoExtractorState.failed(error.message)),
          (leadDetails) => emit(LeadInfoExtractorState.leadInfo(leadDetails))
      );
    });
  }
}
