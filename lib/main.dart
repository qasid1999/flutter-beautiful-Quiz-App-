import 'package:flutter/material.dart';

import 'Screens/home_page.dart';

void main() {
  runApp(MaterialApp(
      title: "Quiz",
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Colors.grey,
          selectionHandleColor: Colors.white,
        ),
      ),
      home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
