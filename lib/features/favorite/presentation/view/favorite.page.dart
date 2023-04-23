import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/joke_view.dart';
import '../../domain/provider/providers.dart';

class FavoritePage extends ConsumerWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(favoriteViewModelProvider).isLoading;
    final jokes = ref.watch(favoriteViewModelProvider).jokes;
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : JokeView(jokes: jokes);
  }
}
