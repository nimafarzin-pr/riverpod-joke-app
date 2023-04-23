import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/usecase/home_usecase.dart';
import '../state/joke_state.dart';

class JokeDataNotifier extends StateNotifier<JokeState> {
  JokeDataNotifier(this.homeUsecase) : super(JokeState()) {
    getJoke();
  }
  HomeUsecase homeUsecase;

  Future<void> getJoke() async {
    state = state.copyWith(isLoading: true);
    await homeUsecase.getJoke().then((data) {
      state = state.copyWith(jokes: data.jokes, isLoading: false);
    });
  }

  Future<void> addToFavorite(id) async {
    final data = homeUsecase.addToFavorite(state: state, id: id);
    state = state.copyWith(jokes: data);
  }
}
