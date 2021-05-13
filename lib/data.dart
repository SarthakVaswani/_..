import 'package:flutter/material.dart';

class Infodata {
  String title;
  String description;
  String appLink;
  // String icon;

  Infodata({
    this.appLink,
    this.description,
    this.title,
  });
}

final infoList = [
  Infodata(
      title: "WallyIt",
      description: "Wallpaper App made with Flutter",
      appLink: "https://github.com/SarthakVaswani/WallyIT"),
  Infodata(
      title: "NoteIt",
      description: "A Minimalistic Note keeper App made with Flutter",
      appLink: "https://noteit.live/"),
  Infodata(
      title: "Empathetic Chat Bot",
      description: "Empathetic Chat Bot made with Flutter",
      appLink: "https://github.com/SarthakVaswani/ace_bot"),
  Infodata(
      title: "TerraNews",
      description: "An App made for earth",
      appLink: "https://github.com/SarthakVaswani/Hack20-TerraNews-app"),
  Infodata(
      title: "Novel App",
      description: "An Online Novel App made with Flutter",
      appLink: "https://pensive-saha-98024b.netlify.app/#/"),
  Infodata(
      title: "OCR Scan App",
      description: "A OCR Scanning App made with Flutter",
      appLink: "https://github.com/SarthakVaswani/Flutter-OCR-App"),
  Infodata(
      title: "Town Shooter Game",
      description: "A Third Person Shooter Game made with Unity 3D Engine",
      appLink: "https://github.com/SarthakVaswani/Town-Shooter-3D"),
];
