// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fallback_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FallbackInfo _$FallbackInfoFromJson(Map<String, dynamic> json) => FallbackInfo(
      routingMode: $enumDecodeNullable(
          _$FallbackRoutingModeEnumMap, json['routingMode']),
      reason: $enumDecodeNullable(_$FallbackReasonEnumMap, json['reason']),
    );

Map<String, dynamic> _$FallbackInfoToJson(FallbackInfo instance) =>
    <String, dynamic>{
      'routingMode': _$FallbackRoutingModeEnumMap[instance.routingMode],
      'reason': _$FallbackReasonEnumMap[instance.reason],
    };

const _$FallbackRoutingModeEnumMap = {
  FallbackRoutingMode.fallbackRoutingModeUnspecified:
      'FALLBACK_ROUTING_MODE_UNSPECIFIED',
  FallbackRoutingMode.fallbackTrafficUnaware: 'FALLBACK_TRAFFIC_UNAWARE',
  FallbackRoutingMode.fallbackTrafficAware: 'FALLBACK_TRAFFIC_AWARE',
};

const _$FallbackReasonEnumMap = {
  FallbackReason.fallbackReasonUnspecified: 'FALLBACK_REASON_UNSPECIFIED',
  FallbackReason.serverError: 'SERVER_ERROR',
  FallbackReason.latencyExceeded: 'LATENCY_EXCEEDED',
};
