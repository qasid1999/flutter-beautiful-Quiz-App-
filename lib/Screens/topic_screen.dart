// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:task_quiz_app/ScienceQuiz/science_quiz.dart';
import 'package:task_quiz_app/EnglishQuiz/english_quiz.dart';
import 'package:task_quiz_app/PhysicsQuiz/physics_quiz.dart';
import 'package:task_quiz_app/common_widgets/custom_appBarr.dart';

class TopicScreen extends StatefulWidget {
  const TopicScreen({Key? key}) : super(key: key);

  @override
  _TopicScreenState createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
  CustomScaffold scaffold = CustomScaffold();
  @override
  Widget build(BuildContext context) {
    return scaffold.buildScaffold(
      "Select a Topic",
      SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  select_topic_elevetedButton(
                    context,
                    "assest/physics_image.png",
                    "Physics Quiz",
                    const PhysicsQuiz(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  select_topic_elevetedButton(
                    context,
                    "assest/english_image.png",
                    "English Quiz",
                    const EnglishQuiz(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  select_topic_elevetedButton(
                    context,
                    "assest/science_image.png",
                    "Science Quiz",
                    const ComputerScienceQuiz(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  SizedBox select_topic_elevetedButton(
      BuildContext context, String imagePath, String text, route) {
    return SizedBox(
      height: 200,
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: const Color(0xFF1D1E35),
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.all(
            5,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return route;
              },
            ),
          );
        },
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              imagePath,
              height: 130,
              width: 300,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
