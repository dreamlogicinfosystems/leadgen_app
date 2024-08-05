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
    String? state,
    String? country,
    String? pincode,
    String? businessName,
    String? address,
    String? website,
    String? registeredAddress,
    String? facebook,
    String? instagram,
    String? twitter,
    String? linkedIn,
    String? google,
    String? fcmToken,
    String? device,
    String? password,
    String? validity
  }) = _UserDto;

  factory UserDto.fromJson(Map<String,dynamic>json) => _$UserDtoFromJson(json);

  factory UserDto.fromDomain(User user){
    return UserDto(
      userId: user.userId,
      name: user.name,
      phoneNumber: user.phoneNumber,
      email: user.email,
      businessName: user.businessName,
      state: user.state,
      password: user.password,
      country: user.country,
      pincode: user.pincode,
      address: user.address,
      website: user.website,
      registeredAddress: user.registeredAddress,
      facebook: user.facebook,
      instagram: user.instagram,
      twitter: user.twitter,
      linkedIn: user.linkedIn,
      google: user.google,
      device:  user.device,
      fcmToken: user.fcmToken
    );
  }

  User toDomain(UserDto user){
    return User(
        userId: user.userId,
        name: user.name,
        phoneNumber: user.phoneNumber,
        email: user.email,
        businessName: user.businessName,
        state: user.state,
        password: user.password,
        country: user.country,
        pincode: user.pincode,
        address: user.address,
        website: user.website,
        registeredAddress: user.registeredAddress,
        facebook: user.facebook,
        instagram: user.instagram,
        twitter: user.twitter,
        linkedIn: user.linkedIn,
        google: user.google,
        validity: user.validity
    );
  }
}