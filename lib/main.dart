import 'package:flutter/material.dart';

import './Pages/HomePage.dart';
import './Pages/DayPages.dart';
import './Pages/EditingPageV2.dart';

void main() {
  runApp(new MaterialApp(
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        //Main menu Page
         "/HomePage": (BuildContext context) => new HomePage(),

        //Editing Page
        "/EditingPage": (BuildContext context) => new EditingPage(),
      }));
}
