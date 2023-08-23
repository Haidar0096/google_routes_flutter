// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toll_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TollInfo _$TollInfoFromJson(Map<String, dynamic> json) => TollInfo(
      estimatedPrice: (json['estimatedPrice'] as List<dynamic>?)
          ?.map((e) => Money.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TollInfoToJson(TollInfo instance) => <String, dynamic>{
      'estimatedPrice': instance.estimatedPrice,
    };
