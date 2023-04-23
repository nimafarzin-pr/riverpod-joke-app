import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../../core/network/dio_exceptions.dart';
import '../../domain/entity/jokes_entity.dart';
import '../../domain/repository/home_repository.dart';
import '../source/remote/home_source.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeSource _homeApi;

  HomeRepositoryImpl(this._homeApi);

  @override
  Future<JokesEntity> fetchJoke() async {
    try {
      final data = await _homeApi.fetchJokesApiRequest();
      final toEntity = JokesEntity.fromModel(data.jokes);
      return toEntity;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }
}
