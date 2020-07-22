import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/student/curriculum.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}
