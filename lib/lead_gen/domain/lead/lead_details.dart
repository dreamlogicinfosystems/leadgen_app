import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead_details.freezed.dart';

@freezed
class LeadDetails with _$LeadDetails {
  const factory LeadDetails({
    String? customerName,
    String? requirement
  }) = _LeadDetails;
}