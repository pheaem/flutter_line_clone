import 'package:flutter/material.dart';
// import 'package:line_clone/mainscreen/home.dart';

class RoutePage {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List classPage = [];
}

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

class TextList {
  static final textList = ['Official', 'Favorite', 'Group', 'Friends'];
  static final nameList = ['Mike', 'Jean', 'Mona', 'Cambo', 'Rose', 'Diona'];
  static final subList = ['Hello', 'Hi', 'Hello', 'Hi', 'Hello', 'Hi'];
  static final trailTime = ['12/1', '12/2', '12/3', '12/1', '12/2', '12/3'];
}
