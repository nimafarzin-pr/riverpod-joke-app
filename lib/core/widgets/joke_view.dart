// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/home/domain/entity/joke_entity.dart';
import '../../features/home/domain/provider/home_providers.dart';

class JokeView extends ConsumerWidget {
  const JokeView({
    Key? key,
    required this.jokes,
  }) : super(key: key);

  final List<JokeEntity> jokes;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (jokes.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Icon(
            Icons.inbox_outlined,
            size: 100,
            color: Colors.grey.shade400,
          ))
        ],
      );
    }
    return Center(
      child: ListView.builder(
        padding: const EdgeInsets.all(6),
        itemBuilder: (context, index) {
          final item = jokes[index];
          return Card(
            color: Colors.white70,
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              title: Center(
                child: Text(
                  item.joke ?? '',
                  textAlign: TextAlign.center,
                ),
              ),
              trailing: Icon(
                  color: item.isSelected ? Colors.red : Colors.grey,
                  item.isSelected ? Icons.favorite : Icons.favorite_border),
              onTap: () {
                ref.read(homeViewModelProvider.notifier).addToFavorite(item.id);
              },
            ),
          );
        },
        itemCount: jokes.length,
      ),
    );
  }
}
