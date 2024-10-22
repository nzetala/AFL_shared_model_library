/*
WriteFromAudio
Instruction: Write what you hear
Input: Audio (Language the user is learning)
Result: Text written by the user (User’s language)
Description: Users listen to an audio clip and write down what they hear in their native language.
* */

import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/native_language_text.dart';
import 'question.dart';

part 'write_from_audio.g.dart';

@JsonSerializable()
class WriteFromAudio extends Question {
  String audioUrl;
  final NativeLanguageText answer;

  WriteFromAudio(
      {required super.questionId, required this.audioUrl, required this.answer})
      : super(questionType: QuestionType.listenAndIdentify);

  factory WriteFromAudio.fromJson(Map<String, dynamic> json) =>
      _$WriteFromAudioFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$WriteFromAudioToJson(this);
}
