import 'package:freezed_annotation/freezed_annotation.dart';

import '../department/department.dart';

part 'lead.freezed.dart';

@freezed
class Lead with _$Lead{
  const factory Lead({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? title,
    String? date,
    String? time,
    String? message,
    String? createdAt,
    String? lastChatDate,
    String? showStatus,
    List<int>? departmentIds,
    List<Department>? departments
  }) = _Lead;
}