import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../../core/network/constant/endpoints.dart';
import '../../../../../core/network/dio_client.dart';
import '../../models/joke_model.dart';
import '../../models/jokes_model.dart';

class HomeSource {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  HomeSource(this._dioClient);

  Future<JokesModel> fetchJokesApiRequest() async {
    try {
      final res = await _dioClient.get(Endpoints.baseUrl2,
          options: Options(headers: {"X-Api-Key": Endpoints.apiKey}));
      List data = res.data;
      int id = 0;
      List<Map<String, dynamic>> jokesWithId = data.map((joke) {
        Map<String, dynamic> newJoke = Map.from(joke);
        newJoke["id"] = id;
        newJoke["isSelected"] = false;
        id++;
        return newJoke;
      }).toList();
      final toJson = companyListModelFromJson(jsonEncode(jokesWithId));
      return JokesModel(jokes: toJson);
    } catch (e) {
      rethrow;
    }
  }
}
