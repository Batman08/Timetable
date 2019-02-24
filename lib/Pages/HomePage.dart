import 'package:flutter/material.dart';
import '../Helpers/StringHelpers.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<Tab> get myTabs => <Tab>[
        Tab(text: StringHelpers.monday),
        Tab(text: StringHelpers.tuesday),
        Tab(text: StringHelpers.wednesday),
        Tab(text: StringHelpers.thursday),
        Tab(text: StringHelpers.friday)
      ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: buildAppBar(context),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            return Center(child: Text(/*tab.text*/ ""));
          }).toList(),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      actions: <Widget>[
        Align(
          alignment: Alignment.bottomRight,
          child: new IconButton(
            icon: new Icon(Icons.add),
            iconSize: 30.0,
            tooltip: StringHelpers.homePageAddTooltip,
            onPressed: () {
              Navigator.of(context).pushNamed(StringHelpers.editPage);
            },
          ),
        ),
      ],
      bottom: TabBar(
        indicatorColor: Colors.lightBlueAccent,
        isScrollable: true,
        tabs: myTabs,
      ),
      title: Text(StringHelpers.appTitle),
    );
  }
}