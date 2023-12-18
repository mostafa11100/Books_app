import 'package:dio/dio.dart';

class apiservices {
  final Dio dio;
  apiservices({required this.dio});
  final String baseurl = "https://www.googleapis.com/books/v1/volumes?";
  Future<Map<String, dynamic>> fetchdata({required String endpoint}) async {
    print("${baseurl + endpoint}");

    var response = await dio.get("${baseurl + endpoint}");

    //print("hii ${response.data}");
    return response.data;
  }
}
