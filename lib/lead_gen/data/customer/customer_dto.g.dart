// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerDtoImpl _$$CustomerDtoImplFromJson(Map<String, dynamic> json) =>
    _$CustomerDtoImpl(
      custId: (json['custId'] as num?)?.toInt(),
      custName: json['custName'] as String?,
      custPhone: json['custPhone'] as String?,
      custEmail: json['custEmail'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$CustomerDtoImplToJson(_$CustomerDtoImpl instance) =>
    <String, dynamic>{
      'custId': instance.custId,
      'custName': instance.custName,
      'custPhone': instance.custPhone,
      'custEmail': instance.custEmail,
      'date': instance.date,
    };
