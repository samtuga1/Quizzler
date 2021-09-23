import 'questions.dart';

class QuizBrain {
  int _questionNum = 0;

  List<Question> _questionsStore = [
    Question('Akuffo Addo is the current president of Ghana', true),
    Question('Bawumia is corrupt.', true),
    Question('Legon is a best university in Ghana', true),
    Question('Ghana is a developing country', true),
    Question('Legon is  the most beautiful university in Ghana', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question('PSG team is shit', false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  bool isFinished() {
    if (_questionNum >= _questionsStore.length - 1) {
      print('returning true');
      return true;
    } else {
      print('returning false');
      return false;
    }
  }

  void nextQuestion() {
    if (_questionNum < _questionsStore.length - 1) {
      _questionNum++;
    }
  }

  String getQuestionText() {
    return _questionsStore[_questionNum].questionText;
  }

  bool getAnswer() {
    return _questionsStore[_questionNum].questionAnswer;
  }

  void reset() {
    _questionNum = 0;
  }
}
