import 'package:flutter/material.dart';

class VideoCall extends StatefulWidget {
  @override
  _VideoCallState createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: RaisedButton.icon(
              color: Colors.white,
              onPressed: () {},
              label: Text('Create Room'),
              icon: Icon(Icons.camera, color: Colors.purple[400],),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 50.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Should also try doing this with the List<> feature 
                  _buildIcon('images/tuxedo.png'),
                  _buildIcon('images/tuxedo.png'),
                  _buildIcon('images/tuxedo.png'),
                  _buildIcon('images/tuxedo.png'),
                  _buildIcon('images/tuxedo.png'),
                  _buildIcon('images/tuxedo.png'),
                  _buildIcon('images/tuxedo.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildIcon(String image) {
    return Padding(
      padding: EdgeInsets.all(3.0),
      child: Stack(
        alignment: Alignment(0.96, 0.96),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.white,
            radius: 20.0,
          ),
          Container(
            height: 15.0, width: 15.0,
            decoration: BoxDecoration(
              color: Colors.green[500],
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }

  _getProfile(String image) {
    return Padding(
      padding: EdgeInsets.only(left: 5.0),
      child: Container(
        height: 40.0, width: 40.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage(image),
            )
        ),
        child: Container(
          height: 5.0, width: 5.0,
          decoration: BoxDecoration(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
