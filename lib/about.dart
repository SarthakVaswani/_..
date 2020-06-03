import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:sarthakvaswaniportfolio/home.dart';

class Espo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return About();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return TAbout();
        } else {
          return MAbout();
        }
      },
    );
  }
}

class About extends StatelessWidget {
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
                      html.window.open(
                          'https://drive.google.com/file/d/1Lig_nvM0Nl5gpKY7Pri7Hy0uxV73DXAE/view?usp=sharing',
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
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/sv.jpg',
                      height: 350,
                      width: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hola!',
                        style:
                            TextStyle(color: Color(0XFFf5af19), fontSize: 60),
                      ),
                      Text(
                        'I am',
                        style: TextStyle(
                          fontSize: 50,
                          color: Color(0XFFE9E4F0),
                        ),
                      ),
                      Text(
                        'Sarthak Vaswani',
                        style:
                            TextStyle(color: Color(0XFFECE9E6), fontSize: 70),
                      ),
                      Text(
                        'Residing at New Delhi, Currently pursuing',
                        style: TextStyle(
                          fontSize: 38,
                          color: Color(0XFFE9E4F0),
                        ),
                      ),
                      Text(
                        'BCA',
                        style:
                            TextStyle(fontSize: 38, color: Color(0XFFE9E4F0)),
                      ),
                      Text(
                        'Vivekananda Institute of Professional Studies',
                        style:
                            TextStyle(fontSize: 38, color: Color(0XFFE9E4F0)),
                      ),
                      Text(
                        'I design & build user interfaces',
                        style:
                            TextStyle(fontSize: 38, color: Color(0XFFE9E4F0)),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


class TAbout extends StatelessWidget {
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
                      html.window.open(
                          'https://drive.google.com/file/d/1Lig_nvM0Nl5gpKY7Pri7Hy0uxV73DXAE/view?usp=sharing',
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
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/sv.jpg',
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hola!',
                        style:
                            TextStyle(color: Color(0XFFf5af19), fontSize: 45),
                      ),
                      Text(
                        'I am',
                        style: TextStyle(
                          fontSize: 38,
                          color: Color(0XFFE9E4F0),
                        ),
                      ),
                      Text(
                        'Sarthak Vaswani',
                        style:
                            TextStyle(color: Color(0XFFECE9E6), fontSize: 48),
                      ),
                      Text(
                        'Residing at New Delhi, Currently pursuing',
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0XFFE9E4F0),
                        ),
                      ),
                      Text(
                        'BCA at ',
                        style:
                            TextStyle(fontSize: 22, color: Color(0XFFE9E4F0)),
                      ),
                      Text(
                        ' Vivekananda Institute of Professional Studies',
                        style:
                            TextStyle(fontSize: 22, color: Color(0XFFE9E4F0)),
                      ),
                      Text(
                        'I design & build user interfaces',
                        style:
                            TextStyle(fontSize: 22, color: Color(0XFFE9E4F0)),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}



class MAbout extends StatelessWidget {
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
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 230,
                  width: 230,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/sv.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 10, right: 10, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hola!',
                      style: TextStyle(color: Color(0XFFf5af19), fontSize: 32),
                    ),
                    Text(
                      'I am',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0XFFE9E4F0),
                      ),
                    ),
                    Text(
                      'Sarthak Vaswani',
                      style: TextStyle(
                        color: Color(0XFFECE9E6),
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'Residing at New Delhi, \ Currently pursuing',textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0XFFE9E4F0),
                      ),
                    ),
                    Text(
                      'BCA at Vivekananda Institute of \ Professional Studies', textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Color(0XFFE9E4F0)),
                    ),
                    Text(
                      'I design & build user interfaces',
                      style: TextStyle(fontSize: 25, color: Color(0XFFE9E4F0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 45, horizontal: 20),
                      child: Column(
                        children: [
                          Row(
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
                                    html.window.open(
                                        'https://drive.google.com/file/d/1Lig_nvM0Nl5gpKY7Pri7Hy0uxV73DXAE/view?usp=sharing',
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
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
