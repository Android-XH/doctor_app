import 'package:doctorapp/pages/toolbar/index.dart';
import 'package:flutter/material.dart';

// 组件 example
import 'package:doctorapp/components/example_widgets_list.dart';
import 'package:doctorapp/components/pull_to_refresh/example.dart';
import 'package:doctorapp/components/a_button/example.dart';
import 'package:doctorapp/components/a_checkbox/example.dart';
import 'package:doctorapp/components/a_dialog/example.dart';
import 'package:doctorapp/components/a_row/example.dart';
import 'package:doctorapp/components/a_stepper/example.dart';

import 'package:doctorapp/pages/launch/launch.dart';
import 'package:doctorapp/pages/login/login_mobile.dart';


class Router {
  static final _routes = {    
    /// TODO: 从非toolbar页面跳转到toolbar页面的入场动画不一致

    '/': (BuildContext context, { Object args }) => Launch(),
    // 从非toolbar页面（子页面）跳转到toolbar页面（主页）实现：
    // pushName到对应的路由，因为Toolbar是单例模式，所以只会创建一个
    // pushName之后，在ToolBar，initState中获取当前的路由，实现切换页面
    '/mine': (BuildContext context, { Object args }) => Toolbar(),
    '/message': (BuildContext context, { Object args }) => Toolbar(),
    '/patient': (BuildContext context, { Object args }) => Toolbar(),
    '/menu': (BuildContext context, { Object args }) => Toolbar(arguments: args,),
    
    '/login_mobile': (BuildContext context, { Object args }) => LoginMobile(),

    // 组件列表
    '/example_abutton': (BuildContext context, { Object args }) => ExampleAButton(),
    '/example_widgets_list': (BuildContext context, { Object args }) => ExampleWidgetsList(args: args),
    '/example_astepper': (BuildContext context, { Object args }) => ExampleAStepper(),
    '/example_adialog': (BuildContext context, { Object args }) => ExampleADialog(),
    '/example_arow': (BuildContext context, { Object args }) => ExampleARow(),
    '/example_acheckbox': (BuildContext context, { Object args }) => ExampleACheckBox(),
    '/example_pull_to_refresh': (BuildContext context, { Object args }) => ExamplePullToRefresh(),
  };

  static Router _singleton;

  Router._internal();

  factory Router() {
    if(_singleton == null) {
      _singleton = Router._internal();
    }

    return _singleton;
  }

  /// 监听route
  Route getRoutes(RouteSettings settings) {
    String routeName = settings.name;
    final Function builder = Router._routes[routeName];

    print(settings);

    if(builder == null) {
      return null;
    } else {
      return MaterialPageRoute(
        settings: settings, 
        builder: (BuildContext context) => builder(context, args: settings.arguments)
      );
    }
  }
}
