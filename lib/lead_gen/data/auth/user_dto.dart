import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/auth/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto implements _$UserDto{
  const UserDto._();

  const factory UserDto({
    int? userId,
    String? name,
    String? phoneNumber,
    String? email,
    String? city,
    String? state,
    String? country,
    String? businessName,
    String? password,
    String? confirmPass
  }) = _UserDto;

  factory UserDto.fromJson(Map<String,dynamic>json) => _$UserDtoFromJson(json);

  factory UserDto.fromDomain(User user){
    return UserDto(
      name: user.name,
      phoneNumber: user.phoneNumber,
      email: user.email,
      password: user.password,
      confirmPass: user.confirmPass
    );
  }
}