import 'package:json_annotation/json_annotation.dart';

part 'dictionary.g.dart';

@JsonSerializable()
class Dictionary {
  final String name;

  const Dictionary(this.name);

  factory Dictionary.fromJson(Map<String, dynamic> json) => _$DictionaryFromJson(json);
  Map<String, dynamic> toJson() => _$DictionaryToJson(this);
}