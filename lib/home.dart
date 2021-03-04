import 'package:flutter/material.dart';
import 'dart:html' as html;

class Resp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return Desktop();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return Desktop();
        } else {
          return Mobile();
        }
      },
    );
  }
}

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 755),
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
                    Navigator.pushNamed(context, '/third');
                  },
                  child: Text(
                    'Projects',
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
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 32),
            child: Column(
              children: [
                Container(
                  height: 348,
                  width: 348,
                  child: CircleAvatar(
                    backgroundColor: Color(0XFF4776E6),
                    backgroundImage: AssetImage('assets/images/sv1.jpg'),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        'Sarthak Vaswani',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Exo2'),
                      ),
                      Text(
                        'Flutter Developer / UI Designer',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlineButton(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 1, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/images/instagram.png'),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Instgram')
                                ],
                              ),
                            ),
                            onPressed: () {
                              html.window.open(
                                  "https://www.instagram.com/sarthakvaswani/",
                                  "Instagram");
                            },
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          OutlineButton(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 1, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/images/l.png'),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Linkedin')
                                ],
                              ),
                            ),
                            onPressed: () {
                              html.window.open(
                                  "https://www.linkedin.com/in/sarthak-vaswani-55123a166/",
                                  "LinkedIN");
                            },
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          OutlineButton(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 1, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/images/github-logo.png'),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Github')
                                ],
                              ),
                            ),
                            onPressed: () {
                              html.window.open(
                                  "https://github.com/SarthakVaswani",
                                  "Github");
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 800),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, bottom: 20),
            child: Column(
              children: [
                Container(
                  height: 270,
                  width: 270,
                  child: CircleAvatar(
                    backgroundColor: Color(0XFF4776E6),
                    backgroundImage: AssetImage('assets/images/sv1.jpg'),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        'Sarthak Vaswani',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Exo2'),
                      ),
                      Text(
                        'Flutter Developer / UI Designer',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlineButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage('assets/images/instagram.png'),
                                ),
                              ],
                            ),
                            onPressed: () {
                              html.window.open(
                                  "https://www.instagram.com/sarthakvaswani/",
                                  "Instagram");
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          OutlineButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage('assets/images/l.png'),
                                ),
                              ],
                            ),
                            onPressed: () {
                              html.window.open(
                                  "https://www.linkedin.com/in/sarthak-vaswani-55123a166/",
                                  "LinkedIN");
                            },
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          OutlineButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage('assets/images/github-logo.png'),
                                ),
                              ],
                            ),
                            onPressed: () {
                              html.window.open(
                                  "https://github.com/SarthakVaswani",
                                  "Github");
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                      Navigator.pushNamed(context, '/third');
                    },
                    child: Text(
                      'Projects',
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
    );
  }
}
