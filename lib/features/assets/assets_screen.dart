import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itw_dashboard/features/assets/widgets/scrolling_assets.dart';

class AssetScreen extends ConsumerStatefulWidget {
  const AssetScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AssetScreenState();
}

class _AssetScreenState extends ConsumerState<AssetScreen> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      body: SlotLayout(config: {
        Breakpoints.standard: SlotLayout.from(
          key: const Key('assetScreen Standard'),
          builder: (context) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Cricket',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '50',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 300,
                            height: 45,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Search',
                                  border: OutlineInputBorder(
                                    gapPadding: 2,
                                  )),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      ScrollingAssets(
                        categoryName: 'Team & PLayer Branding',
                        titles: ['Jersy Slots', "Player Jersey sleeve logo"],
                        images: [
                          'assets/rr-jersey.webp',
                          'assets/cricket-jersey-t-shirt.webp'
                        ],
                      ),
                      ScrollingAssets(categoryName: 'Event related Branding'),
                      ScrollingAssets(categoryName: 'On Field Branding'),
                      ScrollingAssets(categoryName: 'Sponsorship Packages'),
                      ScrollingAssets(
                          categoryName: 'Digital and on Air assets'),
                    ],
                  ),
                ),
              ),
            );
          },
        )
      }),
    );
  }
}
