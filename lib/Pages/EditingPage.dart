import 'package:flutter/material.dart';

class EditingPage extends StatefulWidget{
  @override
  State createState() => new EditingPageState();
}

class EditingPageState extends State<EditingPage>{
  TextEditingController periodInputController = new TextEditingController();
  TextEditingController subjectInputController = new TextEditingController();

  @override
  void dispose(){
    periodInputController.dispose();
    subjectInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Editing Mode"),),
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
            child: new Text("Add Period, Subject -- This bit is not, wait it actuall is, but it's not!!!!! for testing"),
            onPressed: () => null,
            colorBrightness: Brightness.dark,
          )
        ],
      ),
    );
  }
}