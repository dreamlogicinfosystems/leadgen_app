import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/lead/chat.dart';

part 'chat_dto.freezed.dart';

part 'chat_dto.g.dart';

@freezed
abstract class ChatDto implements _$ChatDto{
  const ChatDto._();

  const factory ChatDto({
    String? name,
    String? message,
    String? date
  }) = _ChatDto;

  factory ChatDto.fromJson(Map<String,dynamic>json) => _$ChatDtoFromJson(json);

  Chat toDomain(ChatDto chatDto){
    return Chat(
      name: chatDto.name,
      message: chatDto.message,
      date: chatDto.date
    );
  }
}