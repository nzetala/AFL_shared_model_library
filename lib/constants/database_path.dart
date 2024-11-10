class DatabasePath {
  static String getCoursesPath() => '/DEV/Learn/Courses';

  static String getLexiconPath(String courseId) =>
      '/DEV/Learn/Courses/$courseId/lexicon';

  static String getWordPath(String courseId, String wordId) =>
      '/DEV/Learn/Courses/$courseId/lexicon/$wordId';

  static String getLexiconDraftPath(String courseId) =>
      '/DEV/Learn/Courses/$courseId/draft/lexicon';
}
