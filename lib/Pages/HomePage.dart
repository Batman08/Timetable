import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
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
          backgroundColor: Colors.black,
          actions: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              child: new IconButton(
                icon: new Icon(Icons.add),
                iconSize: 30.0,
                tooltip: "Add Subject",
                onPressed: () {
                  Navigator.of(context).pushNamed("/EditingPage");
                },
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.lightBlueAccent,
            isScrollable: true,
            tabs: myTabs,
          ),
          title: Text("Timetable"),
        ),
        body: TabBarView(
          // controller: ,
          children: myTabs.map((Tab tab) {
            return Center(child: Text(/*tab.text*/""));
          }).toList(),
        ),
      ),
    );
  }
}
