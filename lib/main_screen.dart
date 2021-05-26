import 'package:flutter/material.dart';
import 'package:line_clone/mainscreen/chat.dart';
import 'package:line_clone/mainscreen/home.dart';
import 'package:line_clone/mainscreen/menu.dart';
import 'package:line_clone/mainscreen/timeline.dart';
// import 'package:line_clone/routepage.dart';

var _selectedIndex = 0;

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final routes = {
    Center(
      child: Home(),
    ),
    Center(
      child: Chat(),
    ),
    Center(
      child: Timeline(),
    ),
    Center(
      child: Menu(),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: routes.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        elevation: 2.0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.timeline),
              label: 'Timeline',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
              backgroundColor: Colors.blue),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
