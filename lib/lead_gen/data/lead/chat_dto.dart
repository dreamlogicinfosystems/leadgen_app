import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/lead/chat.dart';
import 'chat_details_dto.dart';

part 'chat_dto.freezed.dart';

part 'chat_dto.g.dart';

@freezed
abstract class ChatDto implements _$ChatDto{
  const ChatDto._();

  const factory ChatDto({
    String? date,
    List<ChatDetailsDto>? chatData,
  }) = _ChatDto;

  factory ChatDto.fromJson(Map<String,dynamic>json) => _$ChatDtoFromJson(json);

  Chat toDomain(ChatDto chatDto){
    return Chat(
      date: chatDto.date,
      chatData: chatDto.chatData?.map((e) => const ChatDetailsDto().toDomain(e)).toList(),
    );
  }
}