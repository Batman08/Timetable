import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_colorpicker/material_picker.dart';

class TextFields extends StatefulWidget {
  @override
  State createState() => new TextFieldState();
}

class TextFieldState extends State<TextFields> {
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
                titleField(context),
                descriptionField(context),
                subjectColor(context),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.up,
                  children: <Widget>[
                    new RaisedButton(
                      child: Text("Cancel"),
                      onPressed: () {
                        Navigator.pop(context); //need to separate method
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField titleField(BuildContext context) {
    return new TextField(
      style: Theme.of(context).textTheme.display3,
      decoration: new InputDecoration(
          hintText: "Title",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)))),
    );
  }

  TextField descriptionField(BuildContext context) {
    return new TextField(
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

  ButtonTheme subjectColor(BuildContext context) {
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
              },
            );
          },
        ));
  }
}
