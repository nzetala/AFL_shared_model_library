enum QuestionType
{
  listenAndSelect,
  translateWord,
  translateSentence,
  reverseTranslateSentence,
  listenAndIdentify,
  fillInTheBlanks,
  matchAudioToImage,
  matchPairs,
  translateFromImage,
  userTranslateSentence,
  writeFromAudio
}

extension QuestionTypeExtension on QuestionType {
  static QuestionType? fromString(String value) {
    switch (value) {
      case 'listenAndSelect':
        return QuestionType.listenAndSelect;
      case 'translateWord':
        return QuestionType.translateWord;
      case 'translateSentence':
        return QuestionType.translateSentence;
      case 'reverseTranslateSentence':
        return QuestionType.reverseTranslateSentence;
      case 'listenAndIdentify':
        return QuestionType.listenAndIdentify;
      case 'fillInTheBlanks':
        return QuestionType.fillInTheBlanks;
      case 'matchAudioToImage':
        return QuestionType.matchAudioToImage;
      case 'matchPairs':
        return QuestionType.matchPairs;
      case 'translateFromImage':
        return QuestionType.translateFromImage;
      case 'userTranslateSentence':
        return QuestionType.userTranslateSentence;
      case 'writeFromAudio':
        return QuestionType.writeFromAudio;
      default:
        return null;
    }
  }

  String get stringValue {
    switch (this) {
      case QuestionType.listenAndSelect:
        return 'listenAndSelect';
      case QuestionType.translateWord:
        return 'translateWord';
      case QuestionType.translateSentence:
        return 'translateSentence';
      case QuestionType.reverseTranslateSentence:
        return 'reverseTranslateSentence';
      case QuestionType.listenAndIdentify:
        return 'listenAndIdentify';
      case QuestionType.fillInTheBlanks:
        return 'fillInTheBlanks';
      case QuestionType.matchAudioToImage:
        return 'matchAudioToImage';
      case QuestionType.matchPairs:
        return 'matchPairs';
      case QuestionType.translateFromImage:
        return 'translateFromImage';
      case QuestionType.userTranslateSentence:
        return 'userTranslateSentence';
      case QuestionType.writeFromAudio:
        return 'writeFromAudio';
      default:
        return '';
    }
  }
}