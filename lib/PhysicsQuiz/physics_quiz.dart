import 'package:flutter/material.dart';
import 'package:task_quiz_app/common_widgets/custom_appBarr.dart';

import '../Screens/result_page.dart';
import 'list_of_question.dart';

class PhysicsQuiz extends StatefulWidget {
  const PhysicsQuiz({Key? key}) : super(key: key);

  @override
  _PhysicsQuizState createState() => _PhysicsQuizState();
}

class _PhysicsQuizState extends State<PhysicsQuiz> {
  int score = 0;
  ListOfQuestion list = ListOfQuestion();
  CustomScaffold scaffold = CustomScaffold();
//Option Button , this will show you the options of Question
  Widget optionButton(String text) {
    return SizedBox(
      height: 40,
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF1D1E40),
          onPrimary: Colors.cyan,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.all(
            3,
          ),
        ),
        onPressed: () {
          setState(
            () {
              questionnumber++;
              if (list.isFinished() == true) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultPage(
                        score: score,
                      );
                    },
                  ),
                );
                questionnumber = 1;
                list.reset();
              } else {
                if (list.getCorrectAnswer() == text) {
                  score++;
                  // ignore: avoid_print
                  print(score);
                }
                list.counter();
              }
            },
          );
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  int questionnumber = 1;
  @override
  Widget build(BuildContext context) {
    return scaffold.buildScaffold(
        "Physics Quiz",
        SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 280,
                      width: 400,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 14, right: 14, bottom: 20),
                          child: Text(
                            "$questionnumber)\n${list.getquestion()}",
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              color: Color(0xFF1D1E60),
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 50,
                    ),
                    optionButton(list.getoption1()),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 20,
                    ),
                    optionButton(list.getoption2()),
                    const SizedBox(
                      height: 20,
                    ),
                    optionButton(list.getoption3()),
                    const SizedBox(
                      height: 20,
                    ),
                    optionButton(list.getoption4()),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
