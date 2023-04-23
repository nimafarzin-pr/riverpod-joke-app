import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/joke_entity.dart';
part 'joke_state.freezed.dart';

@freezed
class JokeState with _$JokeState {
  factory JokeState({
    @Default([]) List<JokeEntity> jokes,
    @Default(true) bool isLoading,
  }) = _JokeState;
}
