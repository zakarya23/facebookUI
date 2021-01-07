import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _createYourStory('images/joker.jpg'),
          _createStory('images/joker.jpg', 'The Joker'),
          _createStory('images/joker.jpg', 'Zakarya'),
          _createStory('images/joker.jpg', 'Donald'),
          _createStory('images/joker.jpg', 'Elon'),
          _createStory('images/joker.jpg', 'Felix'),
          _createStory('images/joker.jpg', 'Jack'),
        ],
      ),
    );
  }


  _createYourStory(String image) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, top: 5.0),
      child: Stack(
        children: [
          Container(
            height: 170.0, width: 100.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 120.0),
            child: Stack(
              alignment: Alignment(0.1, 0.4),
              children: [
                Container(
                  height: 50, width: 100.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(11.0),
                    color: Colors.white,
                  ),
                ),
                Container(
                  child: Text(
                    'Create a story',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.0, left: 28.0),
            child: Container(
              height: 40.0, width: 40.0,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }


  _createStory(String image, String name) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, top: 5.0),
      child: Stack(
        children: [
          Stack(
            alignment: Alignment(0.05, 0.9),
            children: [
              Container(
                height: 170.0, width: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    )
                ),
              ),
              Container(
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage('images/tuxedo.png'),
              backgroundColor: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
