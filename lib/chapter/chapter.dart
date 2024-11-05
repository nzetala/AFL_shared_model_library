import 'package:json_annotation/json_annotation.dart';

part 'chapter.g.dart';

@JsonSerializable(explicitToJson: true)
class Chapter {
  final String chapterNumber;

  const Chapter({required this.chapterNumber});

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);

  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}
