import 'package:json_annotation/json_annotation.dart';

part 'money.g.dart';

/// Represents an amount of money with its currency type.
@JsonSerializable()
class Money {
  /// The three-letter currency code defined in ISO 4217.
  final String? currencyCode;

  /// The whole units of the amount. For example if currencyCode is "USD", then 1 unit is one US dollar.
  final String? units;

  /// Number of nano (10^-9) units of the amount. The value must be between
  /// -999,999,999 and +999,999,999 inclusive. If units is positive, nanos must
  /// be positive or zero. If units is zero, nanos can be positive, zero, or
  /// negative. If units is negative, nanos must be negative or zero.
  /// For example $-1.75 is represented as units=-1 and nanos=-750,000,000.
  final int? nanos;

  const Money({
    this.currencyCode,
    this.units,
    this.nanos,
  });

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  Map<String, dynamic> toJson() => _$MoneyToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Money &&
          runtimeType == other.runtimeType &&
          currencyCode == other.currencyCode &&
          units == other.units &&
          nanos == other.nanos;

  @override
  int get hashCode => currencyCode.hashCode ^ units.hashCode ^ nanos.hashCode;

  @override
  String toString() =>
      'Money{currencyCode: $currencyCode, units: $units, nanos: $nanos}';
}
