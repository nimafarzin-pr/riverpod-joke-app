import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/domain/entity/joke_entity.dart';
import '../../../home/domain/provider/home_providers.dart';
import '../../presentation/state/favorite_state.dart';
import '../../presentation/viewmodel/favorite_state_provider.dart';

final favoriteViewModelProvider =
    StateNotifierProvider<FavoriteDataNotifire, FavoriteState>((ref) {
  // listen to actual data and filter that
  List<JokeEntity> jokes = ref.watch(homeViewModelProvider).jokes;
  final favorites = jokes.where((joke) => joke.isSelected).toList();
  return FavoriteDataNotifire(favorites);
});
