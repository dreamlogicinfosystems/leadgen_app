// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      userId: json['userId'] as int?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      pincode: json['pincode'] as String?,
      businessName: json['businessName'] as String?,
      address: json['address'] as String?,
      website: json['website'] as String?,
      registeredAddress: json['registeredAddress'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
      twitter: json['twitter'] as String?,
      linkedIn: json['linkedIn'] as String?,
      google: json['google'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'state': instance.state,
      'country': instance.country,
      'pincode': instance.pincode,
      'businessName': instance.businessName,
      'address': instance.address,
      'website': instance.website,
      'registeredAddress': instance.registeredAddress,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'twitter': instance.twitter,
      'linkedIn': instance.linkedIn,
      'google': instance.google,
      'password': instance.password,
    };
