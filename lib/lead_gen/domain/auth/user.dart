import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User{
  const factory User({
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
  }) = _User;
}