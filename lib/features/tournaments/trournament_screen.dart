import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../assets/widgets/scrolling_assets.dart';

class TournamentScreen extends ConsumerStatefulWidget {
  const TournamentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TournamentScreenState();
}

class _TournamentScreenState extends ConsumerState<TournamentScreen> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      body: SlotLayout(config: {
        Breakpoints.standard: SlotLayout.from(
          key: const Key('tournamentScreen Standard'),
          builder: (context) {
            return Scaffold(
                body: SingleChildScrollView(
              child: Column(
                children:  [
                  SizedBox(
                    height: 20,
                  ),
                  ScrollingAssets(categoryName: 'Cricket '),
                  ScrollingAssets(categoryName: 'Kabbadi '),
                  ScrollingAssets(categoryName: 'Football '),
                ],
              ),
            ));
          },
        )
      }),
    );
  }
}
