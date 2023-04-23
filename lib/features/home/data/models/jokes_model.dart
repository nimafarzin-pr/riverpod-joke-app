import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/joke_entity.dart';
import 'joke_model.dart';

part 'jokes_model.freezed.dart';
part 'jokes_model.g.dart';

@freezed
class JokesModel with _$JokesModel {
  const factory JokesModel({
    @Default(<JokeModel>[]) List<JokeModel> jokes,
  }) = _JokesModel;
  factory JokesModel.fromJson(Map<String, dynamic> json) =>
      _$JokesModelFromJson(json);
  factory JokesModel.fromEntity(List<JokeEntity> entity) {
    final item = entity.map((e) => JokeModel.fromEntity(e)).toList();
    return JokesModel(jokes: item);
  }
}
