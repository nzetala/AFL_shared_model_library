import 'package:afl_model_library/constants/supported_language.dart';
import 'package:afl_model_library/question/listen_and_select.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fixture.dart';

void main() {
  test('should correctly serialize and deserialize listen and select question',
      () {
    final listenAndSelectJson = listenAndSelect.toJson();
    expect(listenAndSelectJson['questionType'], 'listenAndSelect');

    final listenAndSelectObject = ListenAndSelect.fromJson(listenAndSelectJson);
    expect(listenAndSelectObject.questionId,
        '68198aa8-f139-4459-86ce-f4c94ff8033d');
    expect(listenAndSelectObject.options.first.translations,
        {SupportedLanguage.fr: 'option_fr_1', SupportedLanguage.en: 'option_en_1'});

    print(listenAndSelectObject.toJson());
  });
}
