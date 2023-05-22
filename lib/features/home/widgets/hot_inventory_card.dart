import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HotInventoryCard extends ConsumerWidget {
  const HotInventoryCard({super.key, required this.text, required this.tournament});

  final String text;
  final String tournament;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 60,
      child: Container(
        margin: EdgeInsets.all(5),
        height: 60,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        child: Center(
            child: Text(
          text,
        )),
      ),
    );
  }
}
