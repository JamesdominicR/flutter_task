import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://snapkaro.com/eazyrooms_staging/api/',
    responseType: ResponseType.plain,
  ));
  Future<Response<dynamic>?> userLogin(loginData) async {
    try {
      final response = await dio.post('userlogin', data: jsonEncode(loginData));
      return response;
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  //Register
  Future<Response<dynamic>?> userRegister(registerData) async {
    try {
      final response =
          await dio.post('user_registeration', data: jsonEncode(registerData));
      return response;
    } catch (e) {
      log('called');
      log(e.toString());
    }
    return null;
  }
}
