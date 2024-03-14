import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
class Status with _$Status{
  const factory Status({
    int? id,
    String? name,
  }) = _Status;
}