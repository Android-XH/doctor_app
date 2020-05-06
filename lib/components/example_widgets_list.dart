import 'package:color_dart/color_dart.dart';
import 'package:flutter/material.dart';
import 'package:doctorapp/utils/Icon.dart';
import 'package:doctorapp/utils/global.dart';


class ExampleWidgetsList extends StatelessWidget {
  final Object args;
  const ExampleWidgetsList({
    Key key,
    this.args
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: hex('#fff'),
      appBar: customAppbar(
        title: '组件列表',
        context: context,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: <Widget>[
              returnRow(context,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('AButton'),
                    icontupian6(color: rgba(228, 228, 228, 1), size: 14)
                  ],
                ),
                onPress: () => G.pushNamed('/example_abutton'),
              ),

              returnRow(context,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('AStepper 步进器'),
                    icontupian6(color: rgba(228, 228, 228, 1), size: 14)
                  ],
                ),
                onPress: () => G.pushNamed('/example_astepper'),
              ),

              returnRow(context,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('ADialog 弹出框'),
                    icontupian6(color: rgba(228, 228, 228, 1), size: 14)
                  ],
                ),
                onPress: () => G.pushNamed('/example_adialog'),
              ),

              returnRow(context,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('ARow 行'),
                    icontupian6(color: rgba(228, 228, 228, 1), size: 14)
                  ],
                ),
                onPress: () => G.pushNamed('/example_arow'),
              ),

              returnRow(context,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('ACheckBox 复选框'),
                    icontupian6(color: rgba(228, 228, 228, 1), size: 14)
                  ],
                ),
                onPress: () => G.pushNamed('/example_acheckbox'),
              ),

              returnRow(context,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('pulltorefresh 下拉刷新'),
                    icontupian6(color: rgba(228, 228, 228, 1), size: 14)
                  ],
                ),
                onPress: () => G.pushNamed('/example_pull_to_refresh'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell returnRow(BuildContext context, {Widget child, Function onPress}) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          border: G.borderBottom(),
        ),
        child: child,
      ),
      onTap: () => onPress == null ?(){} : onPress(),
    );
  }
}