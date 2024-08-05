import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintenance.freezed.dart';

@freezed
class Maintenance with _$Maintenance{
  const factory Maintenance({
    int? id,
    int? isEnabled,
    String? message,
    int? isCompulsory,
    int? minAndroidVersion,
    int? minIosVersion
  }) = _Maintenance;
}