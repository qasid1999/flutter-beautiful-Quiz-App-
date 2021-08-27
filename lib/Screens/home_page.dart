import 'package:flutter/material.dart';
import 'package:task_quiz_app/Screens/personal_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  //This is Start button
  SizedBox buildCustomElevetedButton(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.cyan,
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
              fullscreenDialog: true,
              builder: (context) {
                return const PersonalInfo();
              },
            ),
          );
        },
        child: const Text(
          "Start",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1E30),
      body: Center(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assest/image.png",
                height: 100,
                width: 150,
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Flutter Quiz App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              buildCustomElevetedButton(context)
            ],
          ),
        ),
      ),
    );
  }
}
