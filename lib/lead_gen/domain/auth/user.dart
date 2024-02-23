import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User{
  const factory User({
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
  }) = _User;
}