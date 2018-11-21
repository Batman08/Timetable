import 'package:flutter/material.dart';

import './Pages/HomePage.dart';
import './Pages/DayPages.dart';
import './Pages/EditingPage.dart';

void main(){
  runApp(new MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      "/MondayPage" :(BuildContext context) => new MondayPage(),
      "/TuesdayPage" :(BuildContext context) => new TuesdayPage(),
      "/WednesdayPage" :(BuildContext context) => new WednesdayPage(),
      "/ThursdayPage" :(BuildContext context) => new ThursdayPage(),
      "/FridayPage" :(BuildContext context) => new FridayPage(),
      "/MondayEditingPage" :(BuildContext context) => new EditingPage()
    }
  ));
}