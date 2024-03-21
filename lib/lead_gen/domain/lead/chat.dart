import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_details.dart';

part 'chat.freezed.dart';

@freezed
class Chat with _$Chat{
  const factory Chat({
    String? date,
    List<ChatDetails>? chatData,
  }) = _Chat;
}