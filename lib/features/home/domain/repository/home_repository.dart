import '../entity/jokes_entity.dart';

abstract class HomeRepository {
  Future<JokesEntity> fetchJoke();
}
