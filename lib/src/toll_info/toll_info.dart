import 'package:google_routes_flutter/src/money/money.dart';
import 'package:json_annotation/json_annotation.dart';

part 'toll_info.g.dart';

/// Encapsulates toll information on a Route or on a RouteLeg.
@JsonSerializable()
class TollInfo {
  /// The monetary amount of tolls for the corresponding Route or RouteLeg. This
  /// list contains a money amount for each currency that is expected to be
  /// charged by the toll stations. Typically this list will contain only one
  /// item for routes with tolls in one currency. For international trips, this
  /// list may contain multiple items to reflect tolls in different currencies.
  final List<Money>? estimatedPrice;

  TollInfo({
    this.estimatedPrice,
  });

  factory TollInfo.fromJson(Map<String, dynamic> json) =>
      _$TollInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TollInfoToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TollInfo &&
          runtimeType == other.runtimeType &&
          estimatedPrice == other.estimatedPrice;

  @override
  int get hashCode => estimatedPrice.hashCode;

  @override
  String toString() => 'TollInfo{estimatedPrice: $estimatedPrice}';
}
