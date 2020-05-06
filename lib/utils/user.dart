import 'dart:convert';

import 'package:doctorapp/generated/json/base/json_convert_content.dart';
import 'package:doctorapp/generated/json/user_entity_helper.dart';
import 'package:doctorapp/utils/LogUtil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:doctorapp/jsonserialize/user/user_entity.dart';

class User {
  UserEntity _user;

  /// 获取user
  UserEntity get data => _user;

  SharedPreferences _prefs;

  init(Map userJson) async {
    try {
      _user =userEntityFromJson(new UserEntity(),userJson);
    } catch(e) {
      LogUtil.e('user init error, msg: $e');
    }
    await setString(userJson);
    return _user;
  }
  /// 保存到本地缓存
  setString(Map userJson) async{
    _prefs = await SharedPreferences.getInstance();

    _prefs.setString('user', json.encode(userJson));
  }
}