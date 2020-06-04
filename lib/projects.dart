import 'package:flutter/material.dart';
import 'dart:html' as html;

class Spo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DProjects();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DProjects();
        } else {
          return MProjects();
        }
      },
    );
  }
}

class DProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children: [
            Container(
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                          height: 50,
                          color: Color(0XFF38ef7d),
                          hoverColor: Color(0XFF00F260),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text(
                            'Home',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        MaterialButton(
                          height: 50,
                          color: Color(0XFF38ef7d),
                          hoverColor: Color(0XFF00F260),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Text(
                            'About me',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        MaterialButton(
                          height: 50,
                          color: Color(0XFF38ef7d),
                          hoverColor: Color(0XFF00F260),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            html.window.open(
                                'https://drive.google.com/file/d/1ph_3txR5nPQTawi9U198Zb1UcIb-w4s0/view?usp=sharing',
                                'Resume');
                          },
                          child: Text(
                            'Resume',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        child: Column(
                          children: [
                            Text(
                              'Projects',
                              style: TextStyle(
                                  fontSize: 80,
                                  fontFamily: 'Exo2',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFFE2E2E2)),
                            ),
                            Text(
                              '_______________',
                              textScaleFactor: 1,
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 32),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Card(
                          color: Color(0XFFC9D6FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 670,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    child: Icon(
                                      Icons.book,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                  title: Text(
                                    'Novel App',
                                    style:
                                        TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                  subtitle: Text(
                                    'An Online Novel App made with Flutter',
                                    style:
                                        TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      OutlineButton(
                                        splashColor: Color(0XFF4286f4),
                                        hoverColor: Color(0XFF4286f4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        borderSide: BorderSide(
                                          style: BorderStyle.solid,
                                          width: 3,
                                          color: Color(0XFF434343),
                                        ),
                                        highlightElevation: 200,
                                        color: Color(0XFF4286f4),
                                        child: Text(
                                          'Github',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20),
                                        ),
                                        onPressed: () {
                                          html.window.open(
                                              'https://github.com/SarthakVaswani/Flutter-Novel-App',
                                              'Novel App');
                                        },
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      OutlineButton(
                                        splashColor: Color(0XFF4286f4),
                                        hoverColor: Color(0XFF4286f4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        borderSide: BorderSide(
                                          style: BorderStyle.solid,
                                          width: 3,
                                          color: Color(0XFF434343),
                                        ),
                                        highlightElevation: 200,
                                        color: Color(0XFF4286f4),
                                        child: Text(
                                          'View App',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20),
                                        ),
                                        onPressed: () {
                                          html.window.open(
                                              'https://lucid-lamarr-f1b221.netlify.app/#/',
                                              'Novel App');
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        child: Card(
                          color: Color(0XFFC9D6FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 670,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    child: Icon(
                                      Icons.camera,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                  title: Text(
                                    'OCR Scan App',
                                    style: TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                  subtitle: Text(
                                    'A OCR Scanning App made with Flutter',
                                    style: TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      OutlineButton(
                                        splashColor: Color(0XFF4286f4),
                                        hoverColor: Color(0XFF4286f4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        borderSide: BorderSide(
                                          style: BorderStyle.solid,
                                          width: 3,
                                          color: Color(0XFF434343),
                                        ),
                                        highlightElevation: 200,
                                        color: Color(0XFF4286f4),
                                        child: Text(
                                          'Github',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20),
                                        ),
                                        onPressed: () {
                                          html.window.open(
                                              'https://github.com/SarthakVaswani/Flutter-OCR-App',
                                              'OCR Scan App');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                       padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        child: Card(
                          color: Color(0XFFC9D6FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: 670,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    child: Icon(
                                      Icons.games,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                  title: Text(
                                    'Town Shooter Game',
                                    style: TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                  subtitle: Text(
                                    'A Third Person Shooter Game with Unity 3D Engine',
                                    style: TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      OutlineButton(
                                        splashColor: Color(0XFF4286f4),
                                        hoverColor: Color(0XFF4286f4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        borderSide: BorderSide(
                                          style: BorderStyle.solid,
                                          width: 3,
                                          color: Color(0XFF434343),
                                        ),
                                        highlightElevation: 200,
                                        color: Color(0XFF4286f4),
                                        child: Text(
                                          'Github',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20),
                                        ),
                                        onPressed: () {
                                          html.window.open(
                                              'https://github.com/SarthakVaswani/Town-Shooter-3D',
                                              'Town Shooter Game');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints( minHeight: 1200),
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
                      child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
            children: [
              Text(
                'Projects',
                style: TextStyle(
                    fontSize: 70,
                    fontFamily: 'Exo2',
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFE2E2E2)),
              ),
              Text(
                '_______________',
                textScaleFactor: 1,
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 29),
              )
            ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Card(
            color: Color(0XFFC9D6FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 700,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.book,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Novel App',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    subtitle: Text(
                      'An Online Novel App made with Flutter',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlineButton(
                          splashColor: Color(0XFF4286f4),
                          hoverColor: Color(0XFF4286f4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            width: 3,
                            color: Color(0XFF434343),
                          ),
                          highlightElevation: 200,
                          color: Color(0XFF4286f4),
                          child: ImageIcon(
                            AssetImage('assets/images/github-logo.png'),
                          ),
                          onPressed: () {
                            html.window.open(
                                'https://github.com/svas0000/Flutter-Novel-App',
                                'Novel App');
                          },
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        OutlineButton(
                          splashColor: Color(0XFF4286f4),
                          hoverColor: Color(0XFF4286f4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            width: 3,
                            color: Color(0XFF434343),
                          ),
                          highlightElevation: 200,
                          color: Color(0XFF4286f4),
                          child: Icon(
                            Icons.open_in_new,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            html.window.open(
                                'https://lucid-lamarr-f1b221.netlify.app/#/',
                                'Novel App');
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Card(
            color: Color(0XFFC9D6FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 670,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.camera,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'OCR Scan App',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    subtitle: Text(
                      'A OCR Scanning App made with Flutter',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlineButton(
                          splashColor: Color(0XFF4286f4),
                          hoverColor: Color(0XFF4286f4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            width: 3,
                            color: Color(0XFF434343),
                          ),
                          highlightElevation: 200,
                          color: Color(0XFF4286f4),
                          child: ImageIcon(
                            AssetImage('assets/images/github-logo.png'),
                          ),
                          onPressed: () {
                            html.window.open(
                                'https://github.com/svas0000/Flutter-OCR-App',
                                'OCR Scan App');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Card(
            color: Color(0XFFC9D6FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 670,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.games,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      'Town Shooter Game',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    subtitle: Text(
                      'A Third Person Shooter Game with Unity 3D Engine',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlineButton(
                          splashColor: Color(0XFF4286f4),
                          hoverColor: Color(0XFF4286f4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            width: 3,
                            color: Color(0XFF434343),
                          ),
                          highlightElevation: 200,
                          color: Color(0XFF4286f4),
                          child: ImageIcon(
                            AssetImage('assets/images/github-logo.png'),
                          ),
                          onPressed: () {
                            html.window.open(
                                'https://github.com/SarthakVaswani/Town-Shooter-3D',
                                'Town Shooter Game');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),  
      Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Expanded(
              child: MaterialButton(
                height: 40,
                color: Color(0XFF38ef7d),
                hoverColor: Color(0XFF00F260),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
            ),
            SizedBox(
              width: 21,
            ),
            Expanded(
              child: MaterialButton(
                height: 40,
                color: Color(0XFF38ef7d),
                hoverColor: Color(0XFF00F260),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Text(
                  'About me',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
            ),
            SizedBox(
              width: 21,
            ),
            Expanded(
              child: MaterialButton(
                height: 40,
                color: Color(0XFF38ef7d),
                hoverColor: Color(0XFF00F260),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                onPressed: () {
                  html.window.open(
                      'https://drive.google.com/file/d/1ph_3txR5nPQTawi9U198Zb1UcIb-w4s0/view?usp=sharing',
                      'Resume');
                },
                child: Text(
                  'Resume',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
            ),
        ],
      ),
              ),
              ],
            ),
          ),
        ),
    );
  }
}
