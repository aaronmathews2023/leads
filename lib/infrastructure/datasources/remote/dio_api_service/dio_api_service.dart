
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:leads/infrastructure/datasources/local/shared_pref/shared_pref.dart';
import 'package:leads/infrastructure/datasources/remote/api/api.dart';
import 'package:leads/infrastructure/datasources/remote/base.dart';
import 'package:leads/utils/logger/logger.dart';

class DioApiService implements ApiService {
  factory DioApiService() => _instance;

  DioApiService._internal() {
    _initializeDio();
  }
  static bool isLogout = true;
  static final DioApiService _instance = DioApiService._internal();

  final Dio _dio = Dio();

  Dio get dioInstance => _dio;

  void _initializeDio() {
    _dio.options = BaseOptions(
      baseUrl: Api.baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
  }

  String? authToken = "";
  Future<void> _setAuthTokenHeader() async {
    final token = await SharedPref().getToken();
    if (token != null) {
      _dio.options.headers['Authorization'] = 'Bearer $token';
      if (kDebugMode) {
        AppLogger.e("Token------------------>$token");
      }
    }
    authToken = token;
    return;
  }

  @override
  Future<Response> get(String endpoint,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      if (Api.isLogEnable && kDebugMode) {
        AppLogger.i(" GET DATA FROM ---- ${endpoint}");
        AppLogger.i(queryParameters);
      }

      await _setAuthTokenHeader();
      final response =
          await _dio.get(endpoint, queryParameters: queryParameters);

      if (Api.isLogEnable && kDebugMode) {
        AppLogger.i(
            "Status Code--------->${response.statusCode} --------->$endpoint ------->query --->$queryParameters     ---> data ----> ${response.data}");
        AppLogger.d(response.data);
      }
   
      return response;
    } on DioException catch (e,stack) {
      if (e.response?.statusCode == 403) {
        String? logout = e.response?.data['data']['logout'];
        AppLogger.i("Logout-----------> $logout");
 return Response(
        requestOptions: RequestOptions(),
        statusCode: 403,
        data: null,
      );
       
      } else if (e.response?.statusCode == 401) {
     return Response(
        requestOptions: RequestOptions(),
        statusCode: 401,
        data: null,
      );
      }
      if (Api.isLogEnable) {
        AppLogger.e(endpoint);
        AppLogger.e(e);
        AppLogger.e(e.message);
        AppLogger.e(e.error);
      }
   return Response(
        requestOptions: RequestOptions(),
        statusCode: 403,
        data: null,
      );
    }catch(e){
      return Response(
        requestOptions: RequestOptions(),
        statusCode: 401,
        data: null,
      );
    }
  }

  @override
  Future<Response> post(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      await _setAuthTokenHeader();
      final response = await _dio.post(endpoint, data: data);
      if (Api.isLogEnable) {
        AppLogger.i(endpoint);
        AppLogger.e(
            "Status Code------>${response.statusCode}+ Status Message---->${response.statusMessage}");
        AppLogger.d(response);
      }
    
      return response;
    } on DioException catch (e,stack) {
      if (e.response?.statusCode == 403) {
        String? logout = e.response?.data['data']['logout'];
        AppLogger.i("Logout-----------> $logout");
 return Response(
        requestOptions: RequestOptions(),
        statusCode: 403,
        data: null,
      );
      } else if (e.response?.statusCode == 401) {
     return Response(
        requestOptions: RequestOptions(),
        statusCode: 401,
        data: null,
      );
      }
      if (Api.isLogEnable) {
        AppLogger.e(e.requestOptions.data);
        AppLogger.e(e.response);
        AppLogger.e(e.response?.statusCode);
      }
       
      return Response(
        requestOptions: RequestOptions(),
        statusCode: e.response?.statusCode,
        data: e.response?.data,
      );
    }
  }


  @override
  Future<Response> put(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      await _setAuthTokenHeader();
      final response = await _dio.put(endpoint, data: data);
      if (Api.isLogEnable) {
        AppLogger.e(
            "Status Code------>${response.statusCode}+ Status Message---->${response.statusMessage}");
        AppLogger.d(response);
      }
    
      return response;
    } on DioException catch (e) {
      if (e.response?.statusCode == 403) {
        String? logout = e.response?.data['data']['logout'];
        AppLogger.i("Logout-----------> $logout");

     
      } else if (e.response?.statusCode == 401) {
    
      }
      if (Api.isLogEnable) {
        AppLogger.e(e.response);
      }
      return Response(
        requestOptions: RequestOptions(),
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<Response> patch(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      await _setAuthTokenHeader();
      final response = await _dio.patch(endpoint, data: data);
      if (Api.isLogEnable) {
        AppLogger.e(
            "Status Code------>${response.statusCode}+ Status Message---->${response.statusMessage}");
        AppLogger.d(response);
      }

      return response;
    } on DioException catch (e,stack) {
      if (e.response?.statusCode == 403) {
        String? logout = e.response?.data['data']['logout'];
        AppLogger.i("Logout-----------> $logout");

       
      } else if (e.response?.statusCode == 401) {
      
      }
      if (Api.isLogEnable) {
        AppLogger.i(e.requestOptions.uri);
        AppLogger.e(e.response);
      }
 
      return Response(
          requestOptions: RequestOptions(),
          statusCode: e.response?.statusCode,
          data: e.response?.data);
    }
  }


  @override
  Future<Response> delete(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      await _setAuthTokenHeader();
      final response = await _dio.delete(endpoint, data: data);
      if (Api.isLogEnable) {
        AppLogger.e(
            "Status Code------>${response.statusCode}+ Status Message---->${response.statusMessage}");
        AppLogger.d(response);
      }

      return response;
    } on DioException catch (e) {
      if (e.response?.statusCode == 403) {
        String? logout = e.response?.data['data']['logout'];
        AppLogger.i("Logout-----------> $logout");

   
      } else if (e.response?.statusCode == 401) {
 
      }
      if (Api.isLogEnable) {
        AppLogger.e(e.response);
      }

      return Response(
        requestOptions: RequestOptions(),
        statusCode: 404,
      );
    }
  }

}


