import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_quiz_app/Screens/topic_screen.dart';
import 'package:task_quiz_app/common_widgets/custom_appBarr.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  //Controller for name text field
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

//to get name
  String getname() {
    return nameController.text;
  }

  bool flag = false;
//build Text Field to Enter  Name and Age
  Widget _buildtextField(String hintText, TextEditingController controller,
      TextInputType textInputtype) {
    return SizedBox(
      width: 300,
      child: TextField(
        keyboardType: textInputtype,
        cursorColor: Colors.white,
        controller: controller,
        style: const TextStyle(color: Colors.white, fontSize: 15),
        decoration: InputDecoration(
          errorText: controller.text.isEmpty && flag
              ? "Please fill the Text Field"
              : null,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

//object of appBarr class
  CustomScaffold scaffold = CustomScaffold();

//This is Submit Button
  SizedBox buildCustomElevetedButton(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.cyan,
            primary: const Color(0xFF1D1E35),
            // ignore: prefer_const_constructors

            elevation: 20,
            shadowColor: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.all(5)),
        onPressed: () {
          setState(() {
            flag = true;
          });
          if (nameController.text.isNotEmpty) {
            Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) {
                  return const TopicScreen();
                },
              ),
            );
          }
        },
        child: const Text(
          "Submit",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return scaffold.buildScaffold(
      "Personal Info",
      SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 100),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.3,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assest/cuteboy.jpg"),
                  radius: 65,
                ),
                const SizedBox(height: 40),
                _buildtextField(
                    "Enter Your Name", nameController, TextInputType.name),
                const SizedBox(
                  height: 10,
                ),
                _buildtextField(
                    "Enter Your Age", ageController, TextInputType.number),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: buildCustomElevetedButton(context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
