import 'package:dio/dio.dart';
import 'package:flutter_node_store67/utils/constants.dart';
import 'package:flutter_node_store67/main.dart';
import 'package:flutter_node_store67/utils/utility.dart';
// import 'package:flutter_node_store67/utils/utility.dart';

class DioConfig {
  // สร้างตัวแปรเก็บ token
  // static late String _token;

  // ฟังก์ชันในการดึง token จาก shared preference
  // static _getToken() async {
  //   _token = Utility.getSharedPreference('token');
  // }

  // Create Dio instance

  // Create Dio Instance with Auth
  // static final Dio _dioWithAuth = Dio()
  static final Dio _dio = Dio()
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // await _getToken();
          // options.headers['Authorization'] = 'Bearer $_token';
          options.headers['Accept'] = 'application/json';
          options.headers['Content-Type'] = 'application/json';
          options.baseUrl = baseURLAPI;
          return handler.next(options);
        },
        onResponse: (response, handler) async {
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          switch (e.response?.statusCode) {
            case 400:
              // Utility().logger.e('Bad Request');
              Utility().logger.e('Bad Request');
              break;
            case 401:
              // Utility().logger.e('Unauthorized');
              Utility().logger.e('Unauthorized');
              break;
            case 403:
              // Utility().logger.e('Forbidden');
              Utility().logger.e('Forbidden');
              break;
            case 404:
              // Utility().logger.e('Not Found');
              Utility().logger.e('Not Found');
              break;
            case 500:
              // Utility().logger.e('Internal Server Error');
              Utility().logger.e('Internal Server Error');
              break;
            default:
              // Utility().logger.e('Something went wrong');
              Utility().logger.e('Something went wrong');
              break;
          }
          return handler.next(e);
        },
      ),
    );

  static Dio get dio => _dio;
  // static Dio get dioWithAuth => _dioWithAuth;
}
