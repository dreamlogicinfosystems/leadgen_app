import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
class Chat with _$Chat{
  const factory Chat({
    String? name,
    String? message,
    String? date
  }) = _Chat;
}