import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required this.score, Key? key}) : super(key: key);

  final int score;
  String getgreeting() {
    if (score >= 7) {
      return "Great Job";
    } else if (score >= 5 && score < 7) {
      return "Good";
    } else {
      return "Poor";
    }
  }

  Text buildText(String text, double fontSize) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0xFF1D1E50),
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 16,
        toolbarHeight: 70,
        backgroundColor: const Color(0xFF1D1E50),
        title: const Text(
          "Result",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildText(getgreeting(), 24),
                  const SizedBox(
                    height: 20,
                  ),
                  buildText("Total Marks : 10", 20),
                  const SizedBox(
                    height: 20,
                  ),
                  buildText("Obtain Marks : $score", 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
