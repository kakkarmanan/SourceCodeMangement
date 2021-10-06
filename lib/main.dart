import 'package:flutter/material.dart';
import 'package:zoom/screens/meet_join.dart';
import 'screens/home_page.dart';
import 'package:zoom/screens/root_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
    debugShowCheckedModeBanner: false,
    home: MeetJoin(),
  ));
}

