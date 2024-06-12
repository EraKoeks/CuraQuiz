import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('The official language of Curaçao is Papiamentu.', true),
    Question('Curaçao is primarily known for its snowy climate.', false),
    Question('Curaçao is known for its Blue Curaçao liqueur.', true),
    Question('One of the oldest synagogues in the Western Hemisphere reside in Curaçao.', true),
    Question('Curaçao is located in the Caribbean Sea', true),
    Question('Curaçao have a bridge called the Queen Emma Bridge that connects two parts of Willemstad.', true),
    Question('The capital of Curaçao is Amsterdam', false),
    Question('Curaçao is located in the southern Caribbean Sea, off the Venezuelan coast.', true),
    Question('The national animal of Curaçao is the kangaroo.', false),
    Question('Christoffel Park is Curaçao’s largest national park, offering hiking trails and a rich variety of wildlife.', true),
    Question('Curaçao is known for its diverse blend of cultural influences, including African, Dutch, Spanish, and Portuguese.', true),
    Question('Curaçao is home to the Curaçao Sea Aquarium, known for its open-water system allowing sea water to flow directly into the tanks.', true),
    Question('Klein Curaçao is a small uninhabited island off the coast, part of Curaçao\'s territory.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}