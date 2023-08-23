import 'package:json_annotation/json_annotation.dart';

part 'localized_text.g.dart';

/// Localized variant of a text in a particular language.
@JsonSerializable()
class LocalizedText {
  /// Localized string in the language corresponding to `languageCode' below.
  final String? text;

  /// The text's BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  final String? languageCode;

  const LocalizedText({
    this.text,
    this.languageCode,
  });

  factory LocalizedText.fromJson(Map<String, dynamic> json) =>
      _$LocalizedTextFromJson(json);

  Map<String, dynamic> toJson() => _$LocalizedTextToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalizedText &&
          runtimeType == other.runtimeType &&
          text == other.text &&
          languageCode == other.languageCode;

  @override
  int get hashCode => text.hashCode ^ languageCode.hashCode;

  @override
  String toString() =>
      'LocalizedText{text: $text, languageCode: $languageCode}';
}
