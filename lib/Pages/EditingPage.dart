import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
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
  void initState() {
    super.initState();
    getApplicationDocumentsDirectory().then((Directory directory) {
      dir = directory;
      jsonFile = new File(dir.path + "/" + fileName);
      fileExists = jsonFile.existsSync();
      if (fileExists)
        this.setState(
            () => fileContent = json.decode(jsonFile.readAsStringSync()));
    });
  }

  @override
  void dispose() {
    periodInputController.dispose();
    subjectInputController.dispose();
    super.dispose();
  }

  void createFile(Map<String, String> content, Directory dir, String fileName) {
    print("creating file!");
    File file = new File(dir.path + "/" + fileName);
    file.createSync();
    fileExists = true;
    file.writeAsStringSync(json.encode(content));
  }

  void writeToFile(String key, String value) {
    print("Writing to file!");
    Map<String, String> content = {key: value};
    if (fileExists) {
      print("file exists");
      Map<String, String> jsonFileContent =
          json.decode(jsonFile.readAsStringSync());
      jsonFileContent.addAll(content);
      jsonFile.writeAsStringSync(json.encode(jsonFileContent));
    } else {
      print("file does not exist!");
      createFile(content, dir, fileName);
    }

    this.setState(() => fileContent = json.decode(jsonFile.readAsStringSync()));
    print(fileContent);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Editing Mode"),
      ),
      body: new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(top: 10.0),
          ),
          new Text(fileContent.toString()),
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
            onPressed: () => writeToFile(
                periodInputController.text, subjectInputController.text),
            colorBrightness: Brightness.light,
          )
        ],
      ),
    );
  }
}
