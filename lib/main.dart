import 'package:flutter/material.dart';

import './Pages/HomePage.dart';
import './Pages/DayPages.dart';
import './Pages/EditingPageLayout.dart';
import './Pages/EditingV2.dart';

void main() {
  runApp(new MaterialApp(
      home: /*new HomePage()*/ new Home(
        storage: Storage(),
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        //Main menu Page
        "/HomePage": (BuildContext context) => new HomePage(),

        //Editing Page
        "/EditingPage": (BuildContext context) => new EditingPage(),
      }));
}
