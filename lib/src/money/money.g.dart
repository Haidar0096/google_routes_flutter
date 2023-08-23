// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Money _$MoneyFromJson(Map<String, dynamic> json) => Money(
      currencyCode: json['currencyCode'] as String?,
      units: json['units'] as String?,
      nanos: json['nanos'] as int?,
    );

Map<String, dynamic> _$MoneyToJson(Money instance) => <String, dynamic>{
      'currencyCode': instance.currencyCode,
      'units': instance.units,
      'nanos': instance.nanos,
    };
