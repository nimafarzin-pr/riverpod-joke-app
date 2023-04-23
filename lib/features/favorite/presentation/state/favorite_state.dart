import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/domain/entity/joke_entity.dart';
part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  factory FavoriteState({
    @Default([]) List<JokeEntity> jokes,
    @Default(true) bool isLoading,
  }) = _FavoriteState;
}
