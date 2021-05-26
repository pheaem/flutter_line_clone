import 'package:flutter/material.dart';

class Timeline extends StatefulWidget {
  Timeline({Key key}) : super(key: key);

  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timeline'),
        actions: [
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(
              icon: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg')),
              onPressed: () {}),
        ],
      ),
    );
  }
}
