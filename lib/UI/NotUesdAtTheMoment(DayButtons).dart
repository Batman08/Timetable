/*import 'package:flutter/material.dart';

class DayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return new Expanded(
      child:  new Material(
        color: Colors.blueAccent,
          child: new InkWell(
            onTap: () {Navigator.of(context).pushNamed("/MondayPsage");},
              child: new Center(
                child: new Container(
                 child: new Text("Monday", style: new TextStyle(color: Colors.white, fontSize: 55.0, fontWeight: FontWeight.bold),),
              ),
           ),
          ),
        ),
      );
    }
}*/


 /* Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reading and Writing Files'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('${state ?? "File is Empty"}'),
            TextField(
              controller: controller,
            ),
            RaisedButton(
              onPressed: writeData,
              child: Text('Write to File'),
            ),
            RaisedButton(
              child: Text("Get DIR path"),
              onPressed: getAppDirectory,
            ),
            FutureBuilder<Directory>(
              future: _appDocDir,
              builder:
                  (BuildContext context, AsyncSnapshot<Directory> snapshot) {
                Text text = Text('');
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    text = Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    text = Text('Path: ${snapshot.data.path}');
                  } else {
                    text = Text('Unavailable');
                  }
                }
                return new Container(
                  child: text,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}*/