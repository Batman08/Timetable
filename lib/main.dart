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
        "/TuesdayPage": (BuildContext context) => new TuesdayPage(),
        "/WednesdayPage": (BuildContext context) => new WednesdayPage(),
        "/ThursdayPage": (BuildContext context) => new ThursdayPage(),
        "/FridayPage": (BuildContext context) => new FridayPage(),

        //Editing Page
        "/MondayEditingPage": (BuildContext context) => new EditingPage(),
        "/TuesdayEditingPage": (BuildContext context) => new EditingPage(),
        "/WednesdayEditingPage": (BuildContext context) => new EditingPage(),
        "/ThursdayEditingPage": (BuildContext context) => new EditingPage(),
        "/FridayEditingPage": (BuildContext context) => new EditingPage()
      }));
}
