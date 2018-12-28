import 'package:flutter/material.dart';

import './Pages/HomePage.dart';
import './Pages/DayPages.dart';
import './Pages/EditingPage.dart';

void main() {
  runApp(new MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        //Main menu Page
        "/MondayPage": (BuildContext context) => new MondayPage(),

        //Editing Page
        "/MondayEditingPage": (BuildContext context) => new EditingPage(),
      }));
}
