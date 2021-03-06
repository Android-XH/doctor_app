import 'package:color_dart/color_dart.dart';
import 'package:flutter/material.dart';
import 'package:doctorapp/utils/global.dart';




class Patient extends StatefulWidget {
  static _MockPatientState _patientState;

  getAppBar() {
    return _patientState.createAppBar();
  }
  
  Order() {
    _patientState = _MockPatientState();
  }

  _MockPatientState createState() => _MockPatientState();
}

class _MockPatientState extends State<Patient> {
  AppBar createAppBar() {
    /// 配置appbar
    return AppBar(
      centerTitle: true,
      title: Text(
        "患者管理",
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
            "lib/assets/images/mock/patient.png",
            width: G.screenWidth(),
            fit: BoxFit.fill,
          ),
        )
    );
  }
}


//class _OrderState extends State<Order> with TickerProviderStateMixin{
//  static TabController _tabController;
//
//  static List<Tab> tabs = [
//    Tab(text: '全部',),
//    Tab(text: "未完成",),
//    Tab(text: "已完成",),
//  ];
//
//  @override
//  void initState() {
//    super.initState();
//  }
//
//  /// 创建appbar
//  AppBar createAppBar() {
//    _tabController = TabController(vsync: this, length: tabs.length);
//
//    /// 配置appbar
//    return AppBar(
//      centerTitle: true,
//      title: Text(
//        "患者管理",
//        style: TextStyle(color: rgba(56, 56, 56, 1), fontSize: 18,fontWeight: FontWeight.bold),
//      ),
//      bottom: PreferredSize(
//        preferredSize: Size.fromHeight(44),
//        child: Theme(
//          data: ThemeData(
//            splashColor: Colors.transparent,
//            highlightColor: Colors.transparent
//          ),
//          child: TabBar(
//            tabs: tabs,
//            labelColor: rgba(136, 175, 213, 1),
//            labelStyle: TextStyle(
//              fontWeight: FontWeight.bold
//            ),
//            unselectedLabelStyle: TextStyle(
//              fontSize: 15
//            ),
//            unselectedLabelColor: rgba(80, 80, 80, 1),
//            controller: _tabController,
//          ),
//        ),
//      ),
//      backgroundColor: rgba(255, 255, 255, 1),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: rgba(248, 248, 248, 1),
//      child: TabBarView(
//        children: <Widget>[
//          ListView(
//            children: <Widget>[
//              OrderListRow(1,
//                orderNum: '23847563928174',
//                address: '北京市朝阳区青年汇佳园10号...',
//                goodsName: '榛果拿铁',
//                price: 20,
//                time: '2019-01-08 08:05',
//                onPress: () => Navigator.pushNamed(context,
//                  '/order_detail',
//                  arguments: {
//                    "status": 2
//                  }
//                )
//              ),
//              OrderListRow(2,
//                orderNum: '23847563928174',
//                address: '北京市朝阳区青年汇佳园10号...',
//                goodsName: '榛果拿铁',
//                price: 20,
//                time: '2019-01-08 08:05',
//              ),
//              OrderListRow(2,
//                orderNum: '23847563928174',
//                address: '北京市朝阳区青年汇佳园10号...',
//                goodsName: '榛果拿铁',
//                price: 20,
//                time: '2019-01-08 08:05',
//              ),
//              OrderListRow(2,
//                orderNum: '23847563928174',
//                address: '北京市朝阳区青年汇佳园10号...',
//                goodsName: '榛果拿铁',
//                price: 20,
//                time: '2019-01-08 08:05',
//              ),
//              OrderListRow(3,
//                orderNum: '23847563928174',
//                address: '北京市朝阳区青年汇佳园10号...',
//                goodsName: '榛果拿铁',
//                price: 20,
//                time: '2019-01-08 08:05',
//              ),
//            ],
//          ),
//          ListView(
//            children: <Widget>[
//              OrderListRow(1,
//                orderNum: '23847563928174',
//                address: '北京市朝阳区青年汇佳园10号...',
//                goodsName: '榛果拿铁',
//                price: 20,
//                time: '2019-01-08 08:05',
//              ),
//              OrderListRow(1,
//                orderNum: '23847563928174',
//                address: '北京市朝阳区青年汇佳园10号...',
//                goodsName: '榛果拿铁',
//                price: 20,
//                time: '2019-01-08 08:05',
//              ),
//              OrderListRow(1,
//                orderNum: '23847563928174',
//                address: '北京市朝阳区青年汇佳园10号...',
//                goodsName: '榛果拿铁',
//                price: 20,
//                time: '2019-01-08 08:05',
//              ),
//            ],
//          ),
//          ListView(
//            children: <Widget>[
//              OrderListRow(2,
//                orderNum: '23847563928174',
//                address: '北京市朝阳区青年汇佳园10号...',
//                goodsName: '榛果拿铁',
//                price: 20,
//                time: '2019-01-08 08:05',
//              ),
//              OrderListRow(2,
//                orderNum: '23847563928174',
//                address: '北京市朝阳区青年汇佳园10号...',
//                goodsName: '榛果拿铁',
//                price: 20,
//                time: '2019-01-08 08:05',
//              ),
//              OrderListRow(2,
//                orderNum: '23847563928174',
//                address: '北京市朝阳区青年汇佳园10号...',
//                goodsName: '榛果拿铁',
//                price: 20,
//                time: '2019-01-08 08:05',
//              ),
//            ],
//          ),
//        ],
//        controller: _tabController,
//      ),
//    );
//  }
//}

