import '../question.dart';

class ListOfQuestion {
  int _counter = 0;
  List<Question> listofQuestion = [
    Question(
      question:
          "I want to while away my time ____________ new places in the world.",
      option1: "visit",
      option2: "visiting",
      option3: "visits",
      option4: "visited",
      correctoption: "visiting",
    ),
    Question(
      question:
          "I studied hard because I knew that the test would ____________ difficult.",
      option1: "being",
      option2: "been",
      option3: "can",
      option4: "be",
      correctoption: "be",
    ),
    Question(
      question: "I am reading a novel that my mother ____________ last year.",
      option1: "is",
      option2: "will",
      option3: "be",
      option4: "had",
      correctoption: "had",
    ),
    Question(
      question: "I had left, when my husband ____________ .",
      option1: "arrived",
      option2: "arrive",
      option3: "is arrive",
      option4: "over speeding of vehicle",
      correctoption: "arrived",
    ),
    Question(
      question: "If he comes, we ____________ go with him.",
      option1: "could",
      option2: "be",
      option3: "shall",
      option4: "being",
      correctoption: "shall",
    ),
    Question(
      question:
          "My father decorated my room for my birthday. (Which word is an indirect object noun?)",
      option1: "for my birthday",
      option2: "father",
      option3: "decorated",
      option4: "my",
      correctoption: "for my birthday",
    ),
    Question(
      question:
          "We know our art teacher will not take our class. (Which word is a compound noun?)",
      option1: "not",
      option2: "art teacher",
      option3: "class",
      option4: "know",
      correctoption: "art teacher",
    ),
    Question(
      question:
          "Jhon and Sara took sandwiches for breakfast. (Which word is an object noun?)",
      option1: "Sandwiches",
      option2: "took",
      option3: "Sara",
      option4: "breakfast",
      correctoption: "Sandwiches",
    ),
    Question(
      question:
          "Each day in my life having a same routine. (Which word is a singular noun?)",
      option1: "same",
      option2: "my",
      option3: "each",
      option4: "life",
      correctoption: "life",
    ),
    Question(
      question:
          "An empire wrong decision changed the match situation. (Which word is a verbal noun?)",
      option1: "changed",
      option2: "decision",
      option3: "match",
      option4: "empire",
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
