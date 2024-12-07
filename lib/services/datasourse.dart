import 'package:dio/dio.dart';
import 'package:vehup/cache/save_user_data.dart';
import 'package:vehup/models/vehicle_details.dart';
import 'package:vehup/models/vehicle_model.dart';
import 'package:vehup/urls/app_urls.dart';

import '../models/model_class.dart';

class AuthRepository {
  final Dio _dio = Dio();

  Future<LoginResponse> login(LoginRequest request) async {
    try {
      print("Username: ${request.username}");
      print("Password: ${request.password}");

      final response = await _dio.post(
        VehUpAppUrls.login,
        data: {
          'email': request.username,
          'password': request.password,
        },
      );

      print("Raw Response: ${response.data}");

      if (response.statusCode == 200 && response.data != null) {
        final loginResponse = LoginResponse.fromJson(response.data);
        print("Access Token: ${loginResponse.token}");

        saveLoginData(loginResponse);

        return loginResponse;
      } else {
        throw Exception(
            "Failed to login: ${response.statusCode} - ${response.statusMessage}");
      }
    } catch (e) {
      print("Login Error: $e");
      rethrow;
    }
  }

  Future<List<VehicleData>> fetchTotalVehicles(String token) async {
    print(token);
    try {
      final response = await _dio.get(
        VehUpAppUrls.vehicleListUrl,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print("list response$response");
      return (response.data['data'] as List)
          .map((vehicleJson) => VehicleData.fromJson(vehicleJson))
          .toList();
    } catch (e) {
      throw Exception('Failed to load movies');
    }
  }

  Future<VehicleDetailsData> getVehicleDetails(
      int vehicleId, String token) async {
    print("${VehUpAppUrls.vehicleDetailsUrl}$vehicleId");

    try {
      final response = await _dio.get(
        '${VehUpAppUrls.vehicleDetailsUrl}$vehicleId',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );

      print("Response data: ${response.data}");

      if (response.statusCode == 200) {
        return VehicleDetailsData.fromJson(response.data['data']);
      } else {
        throw Exception('Failed to load vehicle details: ${response.data['message']}');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to fetch vehicle details');
    }
  }

}
