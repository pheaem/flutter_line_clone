import 'package:flutter/material.dart';
import 'package:line_clone/routepage.dart';

var index = 0;

class Chat extends StatefulWidget {
  Chat({Key key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Chat',
            style: TextStyle(fontSize: 20.0),
          ),
          actions: [
            IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
            IconButton(icon: Icon(Icons.chat_bubble_rounded), onPressed: () {}),
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          ],
        ),
        body: Column(
          children: [
            ChatListTile(index: 0),
            ChatListTile(index: 1),
            ChatListTile(index: 2),
            ChatListTile(index: 3),
            ChatListTile(index: 4),
            ChatListTile(index: 5),
          ],
        ));
  }
}

class ChatListTile extends StatelessWidget {
  const ChatListTile({Key key, int index}) : super(key: key);
  // final int index = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: ListTile(
        leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg')),
        title: Text(TextList.nameList[index]),
        subtitle: Text(
          TextList.subList[index],
          style: TextStyle(fontSize: 12),
        ),
        trailing: Text(TextList.trailTime[index]),
      ),
    );
  }
}
