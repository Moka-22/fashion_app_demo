import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:fashion_app/features/auth/presentation/data/models/user_model.dart';
import 'package:fashion_app/features/auth/presentation/data/models/user_profile_model.dart';

class AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSource(this.dio);

  Future<UserModel> login(String username, String password) async {
    try {
      final response = await dio.post(
        'https://dummyjson.com/auth/login',
        data: jsonEncode({
          'username': username,
          'password': password,
          'expiresInMins': 30,
        }),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      return UserModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(
        'Login failed: ${e.response?.data['message'] ?? e.message}',
      );
    }
  }

  Future<UserProfileModel> getMe(String accessToken) async {
    try {
      final response = await dio.get(
        'https://dummyjson.com/auth/me',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
      );

      return UserProfileModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(
        'Failed to get profile: ${e.response?.data['message'] ?? e.message}',
      );
    }
  }

  Future<String> refreshToken(String refreshToken) async {
    try {
      final response = await dio.post(
        'https://dummyjson.com/auth/refresh',
        data: jsonEncode({'refreshToken': refreshToken, 'expiresInMins': 30}),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      return response.data['token'];
    } on DioException catch (e) {
      throw Exception(
        'Failed to refresh token: ${e.response?.data['message'] ?? e.message}',
      );
    }
  }
}
