import 'package:color_dart/color_dart.dart';
import 'package:doctorapp/utils/global.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static _MockHomeState _homeState;

  Home() {
    _homeState = _MockHomeState();
  }

  getAppBar() => _homeState.createAppBar();

  _MockHomeState createState() => _MockHomeState();
}

class _MockHomeState extends State<Home> {
  AppBar createAppBar() {
    /// 配置appbar
    return AppBar(
      centerTitle: true,
      title: Text(
        "怡宁健康互联网医院",
        style: TextStyle(color: rgba(255,255,255,1), fontSize: 18,fontWeight: FontWeight.bold),
      ),
      backgroundColor: rgba(30,96,249,1),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(left: 0, right: 0, top: 0),
        child: Image.asset(
          "lib/assets/images/mock/home.png",
          width: G.screenWidth(),
          fit: BoxFit.fill,
        ),
      )
    );
  }
}