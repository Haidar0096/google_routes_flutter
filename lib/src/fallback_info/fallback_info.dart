import 'package:google_routes_flutter/src/fallback_reason/fallback_reason.dart';
import 'package:google_routes_flutter/src/fallback_routing_mode/fallback_routing_mode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fallback_info.g.dart';

/// Information related to how and why a fallback result was used. If this field
/// is set, then it means the server used a different routing mode from your
/// preferred mode as fallback.
@JsonSerializable()
class FallbackInfo {
  /// Routing mode used for the response. If fallback was triggered, the mode
  /// may be different from routing preference set in the original client
  /// request.
  final FallbackRoutingMode? routingMode;

  /// The reason why fallback response was used instead of the original
  /// response. This field is only populated when the fallback mode is triggered
  /// and the fallback response is returned.
  final FallbackReason? reason;

  const FallbackInfo({
    this.routingMode,
    this.reason,
  });

  factory FallbackInfo.fromJson(Map<String, dynamic> json) =>
      _$FallbackInfoFromJson(json);

  Map<String, dynamic> toJson() => _$FallbackInfoToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FallbackInfo &&
          runtimeType == other.runtimeType &&
          routingMode == other.routingMode &&
          reason == other.reason;

  @override
  int get hashCode => routingMode.hashCode ^ reason.hashCode;

  @override
  String toString() =>
      'FallBackInfo{routingMode: $routingMode, reason: $reason}';
}
