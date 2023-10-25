import 'package:bms/app/config.dart';
import 'package:dio/dio.dart';

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
}
