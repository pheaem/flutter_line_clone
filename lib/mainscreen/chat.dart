import 'package:flutter/material.dart';
import 'package:line_clone/routepage.dart';

var index = 0;

class Chat extends StatefulWidget {
  Chat({Key key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  void onTab(value) {
    setState(() {
      index = value;
    });
  }

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
            ChatListTile(
              index: 0,
              onTap: null,
            ),
            ChatListTile(
              index: 1,
              onTap: null,
            ),
            ChatListTile(
              index: 2,
              onTap: null,
            ),
            ChatListTile(
              index: 3,
              onTap: null,
            ),
            ChatListTile(
              index: 4,
              onTap: null,
            ),
            ChatListTile(
              index: 5,
              onTap: null,
            ),
          ],
        ));
  }
}

class ChatListTile extends StatelessWidget {
  const ChatListTile({Key key, @required this.index, @required this.onTap})
      : super(key: key);
  final int index;

  final Function onTap;
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
        onTap: onTap,
      ),
    );
  }
}
