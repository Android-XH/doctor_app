import 'package:dio/dio.dart';
import 'package:doctorapp/request/init_dio.dart';
import 'package:doctorapp/request/req_discounts.dart';
import 'package:doctorapp/request/req_shop.dart';
import 'package:doctorapp/request/req_user.dart';
import 'package:doctorapp/request/req_verification_code.dart';

class Request {
  Dio _dio;

  Request() {
    _dio = initDio();
  }

  ReqUser get user => ReqUser(_dio);

  ReqVerificationCode get verificationCode => ReqVerificationCode(_dio);

  ReqShop get shop => ReqShop(_dio);

  ReqDiscounts get discounts => ReqDiscounts(_dio);
}