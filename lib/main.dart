import 'package:flutter/material.dart';
import 'package:sarthakvaswaniportfolio/about.dart';
import 'package:sarthakvaswaniportfolio/home.dart';
import 'package:sarthakvaswaniportfolio/projects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(Colors.white54),
        ),
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/second': (context) => Aboutmain(),
        '/third': (context) => Projects(),
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0XFF4776E6),
              Color(0XFF8E54E9),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(minHeight: 725),
            child: Column(
              children: [HomePage()],
            ),
          ),
        ),
      ),
    );
  }
}
