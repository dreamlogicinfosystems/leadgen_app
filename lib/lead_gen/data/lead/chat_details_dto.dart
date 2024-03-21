import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/lead/chat_details.dart';

part 'chat_details_dto.freezed.dart';

part 'chat_details_dto.g.dart';

@freezed
abstract class ChatDetailsDto implements _$ChatDetailsDto{
  const ChatDetailsDto._();

  const factory ChatDetailsDto({
    String? createdAt,
    String? message,
    String? name
  }) = _ChatDetailsDto;

  factory ChatDetailsDto.fromJson(Map<String,dynamic>json) => _$ChatDetailsDtoFromJson(json);

  ChatDetails toDomain(ChatDetailsDto chatDetailsDto){
    return ChatDetails(
      name: chatDetailsDto.name,
      message: chatDetailsDto.message,
      createdAt: chatDetailsDto.createdAt
    );
  }
}