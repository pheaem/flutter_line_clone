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
}
