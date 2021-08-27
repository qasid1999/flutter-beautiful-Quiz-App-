// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class CustomScaffold {
  Widget buildScaffold(String title, Widget body) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: Drawer(
        elevation: 50,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF1D1E45),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        "assest/cuteboy.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "About Us",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
            ),
            buildListTile(
              'Muhammad Qasid',
              Icons.person,
            ),
            buildListTile(
              "qasidqasid809@gmail.com",
              Icons.email,
            ),
            buildListTile(
              'Flutter Android and Web app Developer',
              Icons.app_blocking,
            )
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 16,
        toolbarHeight: 70,
        backgroundColor: const Color(0xFF1D1E35),
        title: Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: body,
    );
  }

  ListTile buildListTile(String text, IconData icon) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        icon,
        color: const Color(0xFF1D1E55),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
