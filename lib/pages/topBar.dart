import 'package:flutter/material.dart';

class topBar extends StatefulWidget {
  @override
  _topBarState createState() => _topBarState();
}

class _topBarState extends State<topBar>{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:10.0, left: 8.0),
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: Text('facebook', style: TextStyle(color: Colors.blue[800], fontSize: 28.0, fontWeight: FontWeight.bold),)),
            _getIcon(Icons.search),
            SizedBox(width: 7.0,),
            _getIcon(Icons.message),
            SizedBox(width: 7.0,),
          ],
        ),
      ),
    );
  }

  _getIcon(IconData icon) {
    return Container(
      height: 30.0, width: 30.0,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
