import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0, width: 40.0,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          _createPost('Zakarya Butt', 'images/joker.jpg', '1d', 'images/joker.jpg', 'What is even life?'),
          _createPost('Zuhair Butt', 'images/tuxedo.png', '1h', 'images/joker.jpg', 'LOOK FUNNY CLOWN?'),
          _createPost('Zakarya Butt', 'images/joker.jpg', '1d', 'images/joker.jpg', 'What is even life?'),
        ],
      ),
    );
  }

  _createPost(String name, String image, String time, String postImage, String status) {
    return Padding(
      padding: EdgeInsets.only(left: 5.0, bottom: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0, top: 5.0),
                      child: Text(
                        time + ' . ',
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.menu)
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 55.0),
            child: Container(
              child: Text(
                status
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 5.0),
            child: Container(
              child: Image(
                image: AssetImage(postImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


