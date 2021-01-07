import 'package:flutter/material.dart';

class NewBar extends StatefulWidget {
  @override
  _NewBarState createState() => _NewBarState();
}

class _NewBarState extends State<NewBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 10.0,
      title: Text(
        'facebook',
        style: TextStyle(
          color: Colors.blue[800],
        ),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: Icon(Icons.search),
        ),
        IconButton(
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}
