import 'package:json_annotation/json_annotation.dart';

import '../metadata/metadata.dart';

part 'chapter.g.dart';

@JsonSerializable(explicitToJson: true)
class Chapter {
  final String chapterNumber;

  @JsonKey(toJson: metadataToJson)
  final BasicMetadata? metadata;

  const Chapter({required this.chapterNumber, this.metadata});

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);

  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}
