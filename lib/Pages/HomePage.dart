import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Expanded(
              child: new Material(
                color: Colors.blueAccent,
                child: new InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("/MondayPage");
                  },
                  child: new Center(
                    child: new Container(
                      child: new Text(
                        "Monday",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 55.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
