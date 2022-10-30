import 'dart:io';

import 'package:dio/dio.dart';

import 'endPoint.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
          "Accept": "application/json"
        },
        baseUrl: EndPoint.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: 20 * 1000,
        receiveTimeout: 20 * 1000,
        contentType: 'application/json',
      ),
    );

    dio.interceptors.add(
      LogInterceptor(
        responseBody: true,
        error: true,
        requestBody: true,
        requestHeader: true,
      ),
    );
  }

  static Future getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer ${DataStorage.readData("token")}',
      "Accept": "application/json"
    };
    //This is If no network handle it
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return await dio.get(
          url,
          queryParameters: query,

          //dio error 401
          options: Options(
            followRedirects: false, //new add error dio 302
            validateStatus: (state) => state! < 500,
          ),
        );
      } else {
        return {};
      }
    } on SocketException catch (error) {
      throw Exception(["Please check your internet connection"]);
    }
  }

  static Future postData({
    required String url,
    required FormData data,
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': token,
    };


    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return dio.post(url,
            data: data,
            options: Options(
              followRedirects: false, //new add error dio 302
              validateStatus: (state) => state! < 500,
            ));
      }
      else{
        return {};
      }
    } on SocketException catch (error) {
      throw Exception(["Please check your internet connection"]);
    }
  }

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': token,
    };
    return dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> deleteData({
    required String url,
    // required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer ${DataStorage.readData("token")}',
    };
    return dio.delete(
      url,
      queryParameters: query,
      // data: data,
    );
  }
}
