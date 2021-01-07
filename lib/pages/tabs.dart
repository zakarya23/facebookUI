import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 6);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:15.0),
      child: TabBar(
        controller: tabController,
        indicatorColor: Colors.blue,
        labelColor: Colors.blue[800],
        unselectedLabelColor: Colors.grey,
        tabs: [
          Icon(Icons.home),
          Icon(Icons.group),
          Icon(Icons.play_arrow),
          Icon(Icons.night_shelter),
          Icon(Icons.monetization_on),
          Icon(Icons.menu),
        ],
      ),
    );
  }
}
