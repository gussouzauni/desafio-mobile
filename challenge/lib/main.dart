import 'package:challenge/app/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color(0xff515C6F),
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: SafeArea(child: HomeScreen()),
    );
  }
}
