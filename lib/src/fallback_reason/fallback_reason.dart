import 'package:json_annotation/json_annotation.dart';

part 'fallback_reason.g.dart';

/// Reasons for using fallback response.
@JsonEnum(alwaysCreate: true)
enum FallbackReason {
  /// No fallback reason specified.
  @JsonValue('FALLBACK_REASON_UNSPECIFIED')
  fallbackReasonUnspecified,

  /// A server error happened while calculating routes with your preferred
  /// routing mode, but we were able to return a result calculated by an
  /// alternative mode.
  @JsonValue('SERVER_ERROR')
  serverError,

  /// We were not able to finish the calculation with your preferred routing
  /// mode on time, but we were able to return a result calculated by an
  /// alternative mode.
  @JsonValue('LATENCY_EXCEEDED')
  latencyExceeded
}
