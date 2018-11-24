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

class TuesdayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tuesday"),
        backgroundColor: Colors.greenAccent,
        actions: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: new IconButton(
              icon: new Icon(Icons.settings),
              iconSize: 30.0,
              onPressed: () {
                Navigator.of(context).pushNamed("/TuesdayEditingPage");
              },
            ),
          ),
        ],
      ),
    );
  }
}

class WednesdayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Wednesday"),
        backgroundColor: Colors.yellow,
        actions: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: new IconButton(
              icon: new Icon(Icons.settings),
              iconSize: 30.0,
              onPressed: () {
                Navigator.of(context).pushNamed("/WednesdayEditingPage");
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ThursdayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Thursday"),
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: new IconButton(
              icon: new Icon(Icons.settings),
              iconSize: 30.0,
              onPressed: () {
                Navigator.of(context).pushNamed("/ThursdayEditingPage");
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FridayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Friday"),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: new IconButton(
              icon: new Icon(Icons.settings),
              iconSize: 30.0,
              onPressed: () {
                Navigator.of(context).pushNamed("/FridayEditingPage");
              },
            ),
          ),
        ],
      ),
    );
  }
}
