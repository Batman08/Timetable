import 'package:flutter/material.dart';
import './Pages/HomePage.dart';
import './Pages/EditingV2.dart';

void main() {
  runApp(new MaterialApp(
      // theme: new ThemeData.light(),
      home: new HomePage(),
      /* new EditingPage(
      storage: Storage(),
       ),*/
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        //Main menu Page
        "/HomePage": (BuildContext context) => new HomePage(),
        //Editing Page
        "/EditingPage": (BuildContext context) => new EditingPage(
              storage: Storage(),
            ),
      }));
}
