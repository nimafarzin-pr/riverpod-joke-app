import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/domain/entity/joke_entity.dart';
import '../state/favorite_state.dart';

class FavoriteDataNotifire extends StateNotifier<FavoriteState> {
  FavoriteDataNotifire(this.data) : super(FavoriteState()) {
    getFavoriteJokes();
  }

  List<JokeEntity> data;

  Future<void> getFavoriteJokes() async {
    state = state.copyWith(isLoading: true);
    state = state.copyWith(jokes: data, isLoading: false);
  }
}
