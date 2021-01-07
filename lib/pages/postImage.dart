import 'package:flutter/material.dart';

class PostImage extends StatefulWidget {
  @override
  _PostImageState createState() => _PostImageState();
}

class _PostImageState extends State<PostImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 10.0),
      child: Row(
        children: [
          _makePostButton('Live', Colors.red, Icons.camera_alt),
          _makePostButton('Photo', Colors.green[400], Icons.photo_album),
          _makePostButton('Room', Colors.purple[400], Icons.camera),
        ],
      ),
    );
  }

  _makePostButton(String label, Color color, IconData icon) {
    return Expanded(
      child: Container(
        child: RaisedButton.icon(
          color: Colors.grey[200],
          onPressed: () {},
          label: Text(label),
          icon: Icon(icon, color: color,),
        ),
      ),
    );
  }
}
