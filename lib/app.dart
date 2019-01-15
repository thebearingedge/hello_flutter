import 'package:flutter/material.dart';
import './home.dart';

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext _) {
    return MaterialApp(
        title: 'Simple Layouts',
        home: Home(),
        debugShowCheckedModeBanner: false);
  }
}
