import '../question.dart';

class ListOfQuestion {
  int _counter = 0;
  List<Question> listofQuestion = [
    Question(
      question: "Vultures and Hyenas are",
      option1: "herbivores",
      option2: "carnivores",
      option3: "omnivores",
      option4: "scavengers",
      correctoption: "scavengers",
    ),
    Question(
      question:
          "The type of aquatic animals that can survive in particular water is determined by analyzing its",
      option1: "pH",
      option2: "temperature",
      option3: "volume",
      option4: "turbidity",
      correctoption: "pH",
    ),
    Question(
      question: "Wide variety of living things is called",
      option1: "diversity",
      option2: "biodiversity",
      option3: "habitat",
      option4: "population",
      correctoption: "biodiversity",
    ),
    Question(
      question:
          "The sleep like state which an animal adopt to lower metabolic rates is called",
      option1: "transpiration",
      option2: "shedding of leaves",
      option3: "hibernating",
      option4: "migration",
      correctoption: "hibernating",
    ),
    Question(
      question: "Air, water, light, temperature and pH makes up the",
      option1: "biotic environment",
      option2: "abiotic environment",
      option3: "ecosystem",
      option4: "food chain",
      correctoption: "abiotic environment",
    ),
    Question(
      question: "The dodo became extinct in",
      option1: "1681",
      option2: "1961",
      option3: "1896",
      option4: "1861",
      correctoption: "1681",
    ),
    Question(
      question: "Smoke particles and harmful gases released in air produces a",
      option1: "smoke",
      option2: "haze",
      option3: "fog",
      option4: "smog",
      correctoption: "haze",
    ),
    Question(
      question: "Environment can be kept clean and green by using",
      option1: "less energy",
      option2: "environment friendly technology",
      option3: "protecting wildlife",
      option4: "all of them",
      correctoption: "all of them",
    ),
    Question(
      question: "Fertilizers supports growth of",
      option1: "algae",
      option2: "fruit plants",
      option3: "vines",
      option4: "pines",
      correctoption: "algae",
    ),
    Question(
      question:
          "If untreated waste water will be directly spill in to rivers, sea and lakes it may",
      option1: "contaminate",
      option2: "polluted",
      option3: "spread diseases",
      option4: "all of them",
      correctoption: "all of them",
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
