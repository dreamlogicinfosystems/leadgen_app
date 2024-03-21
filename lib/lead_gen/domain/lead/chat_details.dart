import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_details.freezed.dart';

@freezed
class ChatDetails with _$ChatDetails{
  const factory ChatDetails({
    String? createdAt,
    String? message,
    String? name
  }) = _ChatDetails;
}