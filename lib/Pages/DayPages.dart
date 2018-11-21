import 'package:flutter/material.dart';

class MondayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Monday"), backgroundColor: Colors.blueAccent, ),
      body: new Container(
        child: new Center(
          child: new Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.settings),
                iconSize: 55.0,
                //alignment: Alignment(60.0, 80.0),
                onPressed: () {Navigator.of(context).pushNamed("/MondayEditingPage");},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TuesdayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Tuesday"), backgroundColor: Colors.greenAccent),
    );
  }
}

class WednesdayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Wednesday"), backgroundColor: Colors.yellowAccent),
    );
  }
}

class ThursdayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Thursday"), backgroundColor: Colors.orangeAccent),
    );
  }
}

class FridayPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Friday"), backgroundColor: Colors.redAccent),
    );
  }
}