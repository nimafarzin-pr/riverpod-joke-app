import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/joke_model.dart';
import 'joke_entity.dart';

part 'jokes_entity.freezed.dart';

@freezed
class JokesEntity with _$JokesEntity {
  const factory JokesEntity({
    @Default(<JokeEntity>[]) List<JokeEntity> jokes,
    int? id,
  }) = _JokesEntity;

  factory JokesEntity.fromModel(List<JokeModel> model) {
    final item = model.map((e) => JokeEntity.fromModel(e)).toList();
    return JokesEntity(jokes: item);
  }
}
