import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        q: 'Pinocchio was Walt Disney’s first animated feature film in full color. ',
        a: false),
    Question(
        q: 'Spaghetto is the singular form of the word spaghetti.', a: true),
    Question(
        q: 'In a regular deck of cards, all kings have a mustache', a: false),
    Question(
        q: 'When going out of the cave, the bats always turn in the right direction.',
        a: false),
    Question(
        q: 'Among the letters of the alphabet, only the letter J is not included in the periodic table.',
        a: true),
    Question(
        q: 'Polar bears can only live in the Arctic region, not in the Antarctic. ',
        a: true),
    Question(
        q: 'Walt Disney has the record for most Academy Awards. ', a: true),
    Question(
        q: 'By lying a frog on its back and softly caressing its tummy, it is possible to hypnotize it. ',
        a: true),
    Question(q: 'The moon is wider than Australia. ', a: false),
    Question(
        q: 'The mosquito has a record for killing more people than any other species in written history. ',
        a: true),
    Question(
        q: 'When the two numbers on opposite sides of the dice are added together, the result is always 7. ',
        a: true),
    Question(
        q: 'Michael Jackson and Nicolas Cage both married the same lady. ',
        a: true),
    Question(q: 'South Africa officially has two capital cities. ', a: false),
    Question(q: 'The Atlantic Ocean is the world’s biggest ocean. ', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAns() {
    return _questionBank[_questionNumber].questionAns;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
