import 'dart:convert';

import 'package:bms/app/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  final dio = Dio();

  authLogin(String userName, String password) async {
    Map<String, dynamic> loginData = {
      'username': userName,
      'password': password,
    };
    try {
      var response = await dio.post(
        '${Config.baseUrl}${EndPoints.auth}',
        data: loginData,
      );
      if (response.statusCode == 200 && response.data != null) {
        return response.data["msg"][0];
      }
    } catch (e) {
      return null;
    }
  }

  getContacts() async {
    try {
      var response = await dio.get(
        '${Config.baseUrl}${EndPoints.getContacts}',
      );
      if (response.statusCode == 200 && response.data != null) {
        return response.data["msg"];
      }
    } catch (e) {
      return null;
    }
  }

  getProducts() async {
    try {
      var response = await dio.get(
        '${Config.baseUrl}${EndPoints.getProducts}',
      );
      if (response.statusCode == 200 && response.data != null) {
        return response.data["msg"];
      }
    } catch (e) {
      return null;
    }
  }

  Future<dynamic> createContacts(dynamic json) async {
    try {
      Response response = await dio.post(
        '${Config.baseUrl}${EndPoints.postContacts}',
        data: {"contacts": json},
      );
      if (response.statusCode == 200 && response.data != null) {
        return response.statusMessage;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  Future<dynamic> createProducts(dynamic json) async {
    try {
      print(jsonEncode(json));
      Response response = await dio.post(
        '${Config.baseUrl}${EndPoints.postProducts}',
        data: {"products": json},
      );
      if (response.statusCode == 200 && response.data != null) {
        return response.statusMessage;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
