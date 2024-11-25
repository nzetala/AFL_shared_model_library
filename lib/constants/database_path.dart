class DatabasePath {
  static String getUsersPath() => '/users';

  static String getUserPath(String userId) => '/users/$userId';

  static String getCoursesPath() => '/DEV/Learn/Courses';

  static String getLexiconPath(String courseId) =>
      '/DEV/Learn/Courses/$courseId/lexicon';

  static String getWordPath(String courseId, String wordId) =>
      '/DEV/Learn/Courses/$courseId/lexicon/$wordId';

  static String getLexiconDraftPath(String courseId) =>
      '/DEV/Learn/Courses/$courseId/draft_lexicons/';
}

class CloudStoragePath {
  static String getAudioPath(
          {required String storageBucket,
          required String courseId,
          required String filename}) =>
      'https://firebasestorage.googleapis.com/v0/b/$storageBucket/o?name=dev_data/audios/$courseId/$filename';
}
