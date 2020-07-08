import 'package:challenge/app/screens/widgets/appBar.dart';
import 'package:challenge/app/screens/widgets/categories.dart';
import 'package:challenge/app/screens/widgets/itens.dart';
import 'package:challenge/app/screens/widgets/latest.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color(0xff515C6F),
        width: _width,
        height: _height,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 10,
              right: 0,
              child: AppBarCustom(),
            ),
            Positioned(
              top: 60,
              height: _height * 0.20,
              left: 0,
              right: 0,
              child: CategoriesWidget(),
            ),
            Positioned(
              top: 220,
              height: _height * 0.35,
              left: 0,
              right: 0,
              child: LatestWidget(),
            ),
            Positioned(
              height: _height * .22,
              left: 20,
              right: 0,
              bottom: 55 + MediaQuery.of(context).padding.bottom,
              child: ItensWidget(),
            ),
          ],
        ),
      ),
    );
  }
}