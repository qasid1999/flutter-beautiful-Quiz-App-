import '../question.dart';

class ListOfQuestion {
  int _counter = 0;
  List<Question> listofQuestion = [
    Question(
      question:
          "If the string is stretched by two opposite forces of 10 N then tension in the string is",
      option1: "5N",
      option2: "20 N",
      option3: "10 N",
      option4: "zero",
      correctoption: "zero",
    ),
    Question(
      question:
          "If we place some coins over the paper strip and pull it with a jerk, then coins don't fall off because of",
      option1: "friction",
      option2: "inertia",
      option3: "resistance",
      option4: "force",
      correctoption: "inertia",
    ),
    Question(
      question:
          "To every action, there is always an equal but opposite reaction, this statement is known as",
      option1: "newton's 2nd law of motion",
      option2: "newton's 1st law of motion",
      option3: "newton's 3rd law of motion",
      option4: "law of momentum",
      correctoption: "newton's 3rd law of motion",
    ),
    Question(
      question: "The banking of road prevents",
      option1: " sliding of vehicle",
      option2: "rolling of vehicle",
      option3: "skidding of vehicle",
      option4: "over speeding of vehicle",
      correctoption: "skidding of vehicle",
    ),
    Question(
      question:
          "A cyclist of mass 30 kg exerts a force of 250 N to move his cycle. The acceleration is 4 ms−2. The force of friction between the road and tires will be",
      option1: "120 N",
      option2: "130 N",
      option3: "150N",
      option4: "115 N",
      correctoption: "130 N",
    ),
    Question(
      question: "An object that revolves around a planet is called a",
      option1: " robot",
      option2: "modulus",
      option3: "solar cars",
      option4: "satellite",
      correctoption: "satellite",
    ),
    Question(
      question: "The gravitation is inversely related to",
      option1: "distance between masses",
      option2: "product of magnitude of masses",
      option3: "direction of masses",
      option4: "square of distance between masses",
      correctoption: "square of distance between masses",
    ),
    Question(
      question:
          "To complete one revolution around the Earth, the communication satellites take",
      option1: "24 hours",
      option2: "36 hours",
      option3: "48 hours",
      option4: "72 hours",
      correctoption: "24 hours",
    ),
    Question(
      question: "The first man who came up with the idea of gravity was",
      option1: "Henry Briggs",
      option2: "John Napier",
      option3: "Jobst Burgi",
      option4: "Isaac Newton",
      correctoption: "Isaac Newton",
    ),
    Question(
      question: "The velocity of the geostationary satellite to earth is",
      option1: "10 ms-1",
      option2: "15 ms-1",
      option3: "zero",
      option4: "1 ms-1",
      correctoption: "zero",
    ),
  ];
  String getquestion() {
    return listofQuestion[_counter].question;
  }

  void counter() {
    if (_counter <= listofQuestion.length - 1) {
      _counter++;
    }
  }

  String getoption1() {
    return listofQuestion[_counter].option1;
  }

  String getoption2() {
    return listofQuestion[_counter].option2;
  }

  String getoption3() {
    return listofQuestion[_counter].option3;
  }

  String getoption4() {
    return listofQuestion[_counter].option4;
  }

  String getCorrectAnswer() {
    return listofQuestion[_counter].correctoption;
  }

  bool isFinished() {
    if (_counter >= listofQuestion.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _counter = 0;
  }
}
