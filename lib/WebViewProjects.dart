import 'package:flutter/material.dart';
import 'package:sarthakvaswaniportfolio/data.dart';
import 'dart:html' as html;

class ProjectGrid extends StatelessWidget {
  final index;
  final Infodata data;

  ProjectGrid({this.index, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0XFFC9D6FF),
                borderRadius: BorderRadius.circular(7)),
            height: MediaQuery.of(context).size.height / 2.6,
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              children: [
                Text(
                  data.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    child: Image.network(
                      data.imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  data.description,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                OutlineButton(
                  focusColor: Color(0XFF4286f4),
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
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: () {
                    html.window.open(data.appLink, data.title);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
