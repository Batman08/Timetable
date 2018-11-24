import 'package:flutter/material.dart';
import 'dart:io';
// import 'package:path_provider/path';
import 'dart:convert';

class EditingPage extends StatefulWidget {
  @override
  State createState() => new EditingPageState();
}

class EditingPageState extends State<EditingPage> {
  TextEditingController periodInputController = new TextEditingController();
  TextEditingController subjectInputController = new TextEditingController();

  File jsonFile;
  Directory dir;
  String fileName = "UserData.json";
  bool fileExists = false;
  Map<String, String> fileContent;

  @override
  void dispose() {
    periodInputController.dispose();
    subjectInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Editing Mode"),
      ),
      body: new Column(
        children: <Widget>[
          new Text("Period"),
          new TextField(
            controller: periodInputController,
          ),
          new Text("Subject"),
          new TextField(
            controller: subjectInputController,
          ),
          new Padding(padding: new EdgeInsets.only(top: 20.0)),
          new RaisedButton(
            child: new Text("Add"),
            onPressed: () => null,
            colorBrightness: Brightness.light,
          )
        ],
      ),
    );
  }
}
