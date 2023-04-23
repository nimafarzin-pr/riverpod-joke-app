// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../presentation/state/joke_state.dart';
import '../entity/joke_entity.dart';
import '../entity/jokes_entity.dart';
import '../repository/home_repository.dart';

class HomeUsecase {
  HomeRepository homeRepository;
  HomeUsecase(this.homeRepository);

  Future<JokesEntity> getJoke() {
    return homeRepository.fetchJoke();
  }

  List<JokeEntity> addToFavorite({required JokeState state, required int id}) {
    var newState = state.jokes.map(
      (p) {
        // if p is the intended product,
        // update its isFavorite value
        if (p.id == id) {
          return p.copyWith(isSelected: !p.isSelected);
        } else {
          return p;
        }
      },
    ).toList();

    return newState;
  }
}
