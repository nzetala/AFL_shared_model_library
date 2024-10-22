import 'package:afl_model_library/question/translate_from_image.dart';
import 'package:afl_model_library/question/translate_sentence.dart';
import 'package:afl_model_library/question/translate_word.dart';
import 'package:afl_model_library/question/user_translate_sentence.dart';
import 'package:afl_model_library/question/write_from_audio.dart';

import '../constants/question_type.dart';
import 'fill_in_the_blanks.dart';
import 'listen_and_identify.dart';
import 'listen_and_select.dart';
import 'match_audio_to_image.dart';
import 'match_pairs.dart';
import 'reverse_translate_sentence.dart';

abstract class Question {
  final String questionId;
  final QuestionType questionType;

  const Question({required this.questionId, required this.questionType});

  factory Question.fromJson(Map<String, dynamic> json) {
    switch (QuestionTypeExtension.fromString(json['questionType'])) {
      case QuestionType.listenAndSelect:
        return ListenAndSelect.fromJson(json);
      case QuestionType.translateWord:
        return TranslateWord.fromJson(json);
      case QuestionType.translateSentence:
        return TranslateSentence.fromJson(json);
      case QuestionType.reverseTranslateSentence:
        return ReverseTranslateSentence.fromJson(json);
      case QuestionType.listenAndIdentify:
        return ListenAndIdentify.fromJson(json);
      case QuestionType.fillInTheBlanks:
        return FillInTheBlanks.fromJson(json);
      case QuestionType.matchAudioToImage:
        return MatchAudioToImage.fromJson(json);
      case QuestionType.matchPairs:
        return MatchPairs.fromJson(json);
      case QuestionType.translateFromImage:
        return TranslateFromImage.fromJson(json);
      case QuestionType.userTranslateSentence:
        return UserTranslateSentence.fromJson(json);
      case QuestionType.writeFromAudio:
        return WriteFromAudio.fromJson(json);
      default:
        throw Exception('Unsupported question type');
    }
  }

  Map<String, dynamic> toJson();
}