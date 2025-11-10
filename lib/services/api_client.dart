// lib/services/api_client.dart
import 'package:dio/dio.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();

  factory ApiClient() => _instance;

  late Dio dio;

  ApiClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl:
            'https://app-truekapp.azurewebsites.net/api', // URL base de tu API
        connectTimeout: const Duration(seconds: 5), // ✅ Duration
        receiveTimeout: const Duration(seconds: 5), // ✅ Duration
        headers: {'Content-Type': 'application/json'},
      ),
    );
  }

  void setToken(String token) {
    dio.options.headers['Authorization'] = 'Bearer $token';
  }

  void clearToken() {
    dio.options.headers.remove('Authorization');
  }
}
