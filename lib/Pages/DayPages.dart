import 'package:flutter/material.dart';

class MondayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Monday"),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: new IconButton(
              icon: new Icon(Icons.settings),
              iconSize: 30.0,
              onPressed: () {
                Navigator.of(context).pushNamed("/MondayEditingPage");
              },
            ),
          ),
        ],
      ),
    );
  }
}