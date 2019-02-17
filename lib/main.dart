import 'package:flutter/material.dart';
import './Pages/HomePage.dart';
import './Pages/EditPage.dart';
import './Helpers/StringHelpers.dart';

void main() {
  runApp(new MaterialApp(
      // todo: theme: new ThemeData.light(),
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        StringHelpers.homePage: (BuildContext context) => new HomePage(),
        StringHelpers.editPage: (BuildContext context) => new EditPage(
              storage: Storage(),
            ),
      }));
}
