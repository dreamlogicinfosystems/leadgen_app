import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead.freezed.dart';

@freezed
class Lead with _$Lead{
  const factory Lead({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? message,
    List<int>? departmentIds
  }) = _Lead;
}