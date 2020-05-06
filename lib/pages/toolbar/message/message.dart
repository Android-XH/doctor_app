import 'package:color_dart/RgbaColor.dart';
import 'package:doctorapp/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  static _MockMessageState _shoppingCartState;

  getAppBar() => _shoppingCartState.createAppBar();

  Message() {
    if(_shoppingCartState == null) {
      _shoppingCartState = _MockMessageState();
    }
  }
  _MockMessageState createState() => _MockMessageState();
}
class _MockMessageState extends State<Message> {
  AppBar createAppBar() {
    /// 配置appbar
    return AppBar(
      centerTitle: true,
      title: Text(
        "消息",
        style: TextStyle(color: rgba(0,0,0,1), fontSize: 18,fontWeight: FontWeight.bold),
      ),
      backgroundColor: rgba(255,255,255,1),
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
            "lib/assets/images/mock/message.png",
            width: G.screenWidth(),
            height: G.screenHeight(),
            fit: BoxFit.fill,
          ),
        )
    );
  }
}