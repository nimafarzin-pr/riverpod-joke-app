import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/joke_model.dart';
part 'joke_entity.freezed.dart';

@freezed
class JokeEntity with _$JokeEntity {
  const factory JokeEntity({
    String? joke,
    int? id,
    @Default(false) bool isSelected,
  }) = _JokeEntity;

  factory JokeEntity.fromModel(JokeModel model) =>
      JokeEntity(joke: model.joke, id: model.id, isSelected: model.isSelected);
}
