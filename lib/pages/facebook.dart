import 'package:flutter/material.dart';
import 'package:usage_app/pages/topBar.dart';
import 'package:usage_app/pages/tabs.dart';
import 'package:usage_app/pages/post.dart';
import 'package:usage_app/pages/postImage.dart';
import 'package:usage_app/pages/videoCall.dart';
import 'package:usage_app/pages/stories.dart';
import 'package:usage_app/pages/status.dart';
import 'package:usage_app/pages/newAppBar.dart';

class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewBar(),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildListDelegate([
              Tabs(),
              Post(),
              PostImage(),
              VideoCall(),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Stories(),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Status(),
            ]),
          ),
        ],
      )
    );
  }
}


