import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/joke_view.dart';
import '../../domain/provider/home_providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(homeViewModelProvider).isLoading;
    final jokes = ref.watch(homeViewModelProvider).jokes;

    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : JokeView(jokes: jokes);
  }
}
