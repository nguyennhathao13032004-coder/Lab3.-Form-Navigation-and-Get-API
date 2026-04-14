import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  final String baseUrl = "https://69ddeef4410caa3d47ba43c9.mockapi.io/";

  Future<void> send(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await dio.post("$baseUrl/$endpoint", data: data);
      print(response);
    } catch (e) {
      print("Dio error: $e");
    }
  }
}