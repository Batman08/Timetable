import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Tab> get myTabs => <Tab>[
        Tab(text: "Monday"),
        Tab(text: "Tuesday"),
        Tab(text: "Wednesday"),
        Tab(text: "Thursday"),
        Tab(text: "Friday")
      ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              child: new IconButton(
                icon: new Icon(Icons.add),
                iconSize: 30.0,
                onPressed: () {
                  Navigator.of(context).pushNamed("/EditingPage");
                },
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: myTabs,
          ),
          title: Text("Timetable"),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            return Center(child: Text(tab.text));
          }).toList(),
        ),
      ),
    );
  }
}
