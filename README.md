<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

## Question models:

### ListenAndSelect
Instruction: Press what you hear
Input: Audio (Language user is learning), List of several words in disorder (User’s language)
Result: Ordered sub-list of one or more words (User’s language)
Description: Users listen to an audio clip and select the correct words from a list in their native language.

### TranslateWord
Instruction: How do you say it?
Input: One word (User’s language), List of 3 words (Language the user is learning)
Result: One word (Language the user is learning)
Description: Users translate a given word from their native language to the target language.

### TranslateSentence
Instruction: Translate this sentence
Input: Phrase (User’s language), List of several words in disorder (Language the user is learning)
Result: Sub-list of one or more words (Language the user is learning)
Description: Users translate a sentence from their native language to the target language using a list of words.

### ReverseTranslateSentence
Instruction: Translate this sentence
Input: Phrase (Language the user is learning), List of several words in disorder (User’s language)
Result: Sub-list of one or more words (User’s language)
Description: Users translate a sentence from the target language to their native language using a list of words.

### ListenAndIdentify
Instruction: What do you hear?
Input: Audio (Language the user is learning), List of 2 words with similar pronunciation (Language the user is learning)
Result: One word (Language the user is learning)
Description: Users listen to an audio clip and identify the correct word from a pair of similar-sounding words.

### FillInTheBlanks
Instruction: Complete the sentence
Input: Sentence with one or more gaps (Language the user is learning), List of several words in disorder (Language the user is learning)
Result: Sub-list of one or more ordered words (Language the user is learning)
Description: Users fill in the blanks in a sentence using a list of words.

### MatchAudioToImage
Instruction: Select the correct image
Input: Audio (Language the user is learning), Text (Language the user is learning), List of 4 images with texts (User’s language)
Result: One text (Language the user is learning)
Description: Users listen to an audio clip and select the correct image that matches the description.

### MatchPairs
Instruction: Combine pairs
Input: 2 lists of 5 words in disorder (one list in each language)
Result: 2 lists of ordered words (one list in each language)
Description: Users match pairs of words from two lists, one in each language.

### TranslateFromImage
Instruction: Translate this word
Input: Image, Text describing the image (Language the user is learning)
Result: Text written by the user (User’s language)
Description: Users translate a word or phrase based on an image and its description.

### UserTranslateSentence
Instruction: Translate this sentence
Input: Text (Language the user is learning)
Result: Text written by the user (User’s language)
Description: Users translate a sentence from the target language to their native language.

### WriteFromAudio
Instruction: Write what you hear
Input: Audio (Language the user is learning)
Result: Text written by the user (User’s language)
Description: Users listen to an audio clip and write down what they hear in their native language.


## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
