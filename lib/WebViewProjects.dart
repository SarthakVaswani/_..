import 'package:flutter/material.dart';
import 'package:sarthakvaswaniportfolio/data.dart';
import 'dart:html' as html;

class WebViewProject extends StatefulWidget {
  @override
  _WebViewProjectState createState() => _WebViewProjectState();
}

class _WebViewProjectState extends State<WebViewProject> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: infoList.length,
        itemBuilder: (context, index) {
          return Card(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),

                      subtitle: Text(infoList[index].description,
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
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
                              'View',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            onPressed: () {
                              html.window.open(infoList[index].appLink,
                                  infoList[index].title);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        });
  }
}
