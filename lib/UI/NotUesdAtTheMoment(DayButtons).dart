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


import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_colorpicker/material_picker.dart';

class Home extends StatefulWidget {
  final Storage storage;

  Home({Key key, @required this.storage}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  String state;
  Future<Directory> _appDocDir;

  @override
  void initState() {
    super.initState();
    widget.storage.readData().then((String value) {
      setState(() {
        state = value;
      });
    });
  }

  Future<File> writeData() async {
    setState(() {
      state = state + "/n" + titleController.text +"/n"+ descriptionController.text;
      // titleController.text = '';
      //state = descriptionController.text;
      // titleController.text = '';
      // descriptionController.text = '';
    });

    return widget.storage.writeData(state);
  }

  void getAppDirectory() {
    setState(() {
      _appDocDir = getApplicationDocumentsDirectory();
    });
  }

  Color currentColor = Color(0xff443a49);

  ValueChanged<Color> onColorChanged;

  changeSimpleColor(Color color) => setState(() => currentColor = color);
  changeMaterialColor(Color color) => setState(() {
        currentColor = color;
        Navigator.of(context).pop();
      });

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new SafeArea(
            top: true,
            bottom: false,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                // Text('${state ?? "File is Empty"}'),
                Text(state),

                titleField(context),
                descriptionField(context),
                subjectColorButton(context),
                // RaisedButton(
                //   onPressed: writeData,
                //   child: Text('Write to File'),
                // ),
                new Row(
                  children: <Widget>[
                    cancelButtonPadding(context),
                    saveButtonPadding(context)
                  ],
                ),
                errorCheck(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  FutureBuilder<Directory> errorCheck() {
    return FutureBuilder<Directory>(
      future: _appDocDir,
      builder: (BuildContext context, AsyncSnapshot<Directory> snapshot) {
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
    );
  }

  Padding cancelButtonPadding(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(50.0),
        child: Row(
          children: <Widget>[cancelRaisedButton(context)],
        ));
  }

  SizedBox cancelRaisedButton(BuildContext context) {
    return new SizedBox(
        width: 100.0,
        height: 50.0,
        child: new RaisedButton(
          child: Text(
            "Cancel",
            style: new TextStyle(fontSize: 20.0),
          ),
          onPressed: () {
            Navigator.pop(context); //need to separate method
          },
        ));
  }

  Padding saveButtonPadding(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(50),
        child: Row(
          children: <Widget>[saveRaisedButton(context)],
        ));
  }

  SizedBox saveRaisedButton(BuildContext context) {
    return new SizedBox(
        width: 100.0,
        height: 50.0,
        child: new RaisedButton(
          child: Text(
            "Save",
            style: new TextStyle(fontSize: 20.0),
          ),
          onPressed: writeData,
        ));
  }

  TextField titleField(BuildContext context) {
    return new TextField(
      style: Theme.of(context).textTheme.display3,
      controller: titleController,
      decoration: new InputDecoration(
          hintText: "Title",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)))),
    );
  }

  TextField descriptionField(BuildContext context) {
    return new TextField(
      controller: descriptionController,
      // style: Theme.of(context).textTheme.display1,
      style: new TextStyle(fontSize: 25.0, height: 1.0, color: Colors.black),
      keyboardType: TextInputType.multiline,
      maxLines: 5,

      decoration: new InputDecoration(
          hintText: "Details",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)))),
    );
  }

  ButtonTheme subjectColorButton(BuildContext context) {
    return new ButtonTheme(
        minWidth: 200.0,
        height: 70.0,
        child: RaisedButton(
          elevation: 3.0,
          //child: Text('Change me'),
          color: currentColor,
          textColor: useWhiteForeground(currentColor)
              ? const Color(0xffffffff)
              : const Color(0xff000000),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return colorPalette();
              },
            );
          },
        ));
  }

  AlertDialog colorPalette() {
    return AlertDialog(
      titlePadding: EdgeInsets.all(8.0),
      contentPadding: EdgeInsets.all(8.0),
      content: SingleChildScrollView(
        child: ColorPicker(
          pickerColor: currentColor,
          onColorChanged: changeSimpleColor,
          colorPickerWidth: 1000.0,
          pickerAreaHeightPercent: 0.7,
          enableAlpha: true,
        ),
      ),
    );
  }
}
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

class Storage {
  Future<String> get localPath async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  Future<File> get localFile async {
    final path = await localPath;
    return File('$path/db.txt');
  }

  Future<String> readData() async {
    try {
      final file = await localFile;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<File> writeData(String data) async {
    final file = await localFile;
    return file.writeAsString("$data");
  }
}
