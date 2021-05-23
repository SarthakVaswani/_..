import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:sarthakvaswaniportfolio/WebViewProjects.dart';
import 'package:sarthakvaswaniportfolio/about.dart';

import 'data.dart';

class Projects extends StatelessWidget {
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

class DProjects extends StatefulWidget {
  @override
  _DProjectsState createState() => _DProjectsState();
}

class _DProjectsState extends State<DProjects> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        interactive: true,
        thickness: 11,
        showTrackOnHover: true,
        controller: _scrollController,
        isAlwaysShown: true,
        child: SingleChildScrollView(
          controller: _scrollController,
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 25),
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
                              html.window.open(resumeUrl, 'Resume');
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
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 20),
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
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 30, horizontal: 20),
                                child: Column(
                                  children: [
                                    GridView.builder(
                                      scrollDirection: Axis.vertical,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 1.3,
                                        mainAxisSpacing: 1,
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 1,
                                      ),
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: infoList.length,
                                      itemBuilder: (context, index) {
                                        return ProjectGrid(
                                          data: infoList[index],
                                        );
                                      },
                                    )
                                  ],
                                ),
                              )
                            ],
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
      ),
    );
  }
}

class MProjects extends StatelessWidget {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(minHeight: 1200),
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
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
                      style:
                          TextStyle(fontWeight: FontWeight.w200, fontSize: 29),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: infoList.length,
                        itemBuilder: (context, index) {
                          return Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              color: Color(0XFFC9D6FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ListTile(
                                      // leading: CircleAvatar(
                                      //   backgroundColor: Colors.lightBlue,
                                      //   child: Image.asset(
                                      //     infoList[index].icon,
                                      //     fit: BoxFit.fill,
                                      //   ),
                                      // ),
                                      title: Text(
                                        infoList[index].title,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),

                                      subtitle: Text(
                                          infoList[index].description,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          OutlineButton(
                                            splashColor: Color(0XFF4286f4),
                                            hoverColor: Color(0XFF4286f4),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              width: 3,
                                              color: Color(0XFF434343),
                                            ),
                                            highlightElevation: 200,
                                            color: Color(0XFF4286f4),
                                            child: Text(
                                              'View',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20),
                                            ),
                                            onPressed: () {
                                              html.window.open(
                                                  infoList[index].appLink,
                                                  infoList[index].title);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                        }),
                  ],
                ),
              ),
              // WebViewProject(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
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
                          html.window.open(resumeUrl, 'Resume');
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
