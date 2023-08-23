import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// gRPC (https://github.com/grpc). Each Status message contains three pieces of
/// data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// API Design Guide (https://cloud.google.com/apis/design/errors?_gl=1*1dyc664*_ga*MTM3NDIyNTU0OC4xNjgzOTgyMzMx*_ga_NRWSTWS78N*MTY5MjQ2MjA0Ny4yNi4xLjE2OTI0NjI0ODQuMC4wLjA.)
@JsonSerializable()
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  final int? code;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  final String? message;

  /// A list of messages that carry the error details. There is a common set of message types for APIs to use.
  ///
  /// An object containing fields of an arbitrary type. An additional field "@type"
  /// contains a URI identifying the type.
  /// Example: { "id": 1234, "@type": "types.example.com/standard/id" }.
  List<dynamic>? details;

  Status({
    this.code,
    this.message,
    this.details,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Status &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          message == other.message &&
          details == other.details;

  @override
  int get hashCode => code.hashCode ^ message.hashCode ^ details.hashCode;

  @override
  String toString() =>
      'Status{code: $code, message: $message, details: $details}';
}
