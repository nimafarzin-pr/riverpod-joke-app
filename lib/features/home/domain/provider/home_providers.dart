import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/shared_provider/shared_providers.dart';
import '../../data/repository/home_repository_impl.dart';
import '../../data/source/remote/home_source.dart';
import '../../presentation/state/joke_state.dart';
import '../../presentation/viewmodel/home_state_provider.dart';
import '../repository/home_repository.dart';
import '../usecase/home_usecase.dart';

final homeApiProvider = Provider<HomeSource>((ref) {
  return HomeSource(ref.read(dioClientProvider));
});

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepositoryImpl(ref.read(homeApiProvider));
});
final getJokeUseCasseProvider = Provider<HomeUsecase>(
    (ref) => HomeUsecase(ref.read(homeRepositoryProvider)));

final homeViewModelProvider =
    StateNotifierProvider<JokeDataNotifier, JokeState>(
        (ref) => JokeDataNotifier(ref.read(getJokeUseCasseProvider)));
