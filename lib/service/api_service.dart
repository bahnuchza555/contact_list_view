import 'dart:convert';

import 'package:dio/dio.dart';

class APIService {
  static Dio dioClient = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 5000),
        receiveTimeout: const Duration(seconds: 5000),
        headers: {
          'Accept': 'application/json',
        },
      )
  );

  Future<dynamic> getContactList(int size) async {
    final serviceRes = await dioClient.get('https://randomuser.me/api?results=$size');
    print(serviceRes.statusCode);
    if (serviceRes.statusCode == 200) {
      return serviceRes.data;
    } else {
      throw Exception('Failed to load service');
    }
  }

}