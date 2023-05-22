import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itw_dashboard/features/home/widgets/hot_inventory_card.dart';
import 'package:itw_dashboard/features/home/widgets/what_to_sell_card.dart';
import 'package:itw_dashboard/features/home/widgets/whom_to_sell_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AdaptiveLayout(
      body: SlotLayout(config: {
        Breakpoints.standard: SlotLayout.from(
          key: const Key('HomeScreen Standard'),
          builder: (context) {
            return Scaffold(
                body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 20,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('Hello Yogesh'), CircleAvatar()],
                    ),
                    const Text(
                      'Home',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      height: 430,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Theme.of(context).primaryColorLight),
                                  borderRadius: BorderRadius.circular(10),
                                  //color: Colors.blue,
                                ),
                                height: 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Hot Inventory',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    ListView(
                                      shrinkWrap: true,
                                      children: const [
                                        HotInventoryCard(
                                            text: 'India vs Pakistan',
                                            tournament: 'Asia Cup 2023'),
                                        HotInventoryCard(
                                            text: 'India vs Pakistan',
                                            tournament: 'Icc World Cup 2024'),
                                        HotInventoryCard(
                                            text: 'India vs Autralia',
                                            tournament: 'Icc World Cup 2024'),
                                        HotInventoryCard(
                                          text: 'Australia vs England',
                                          tournament: 'Icc World Cup 2024',
                                        ),
                                        HotInventoryCard(
                                          text: 'India vs England',
                                          tournament: 'Icc World Cup 2024',
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Theme.of(context).primaryColorLight),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 400,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                'What To Sell',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                          ListView(
                                            shrinkWrap: true,
                                            children: const [
                                              WhatToSellCard(
                                                text: 'Jersy Slot',
                                              ),
                                              WhatToSellCard(
                                                text: 'LED Wall',
                                              ),
                                              WhatToSellCard(
                                                text: 'Upper Tier',
                                              ),
                                              WhatToSellCard(
                                                text: 'Title Sponsor',
                                              ),
                                              WhatToSellCard(
                                                text: 'Stump Branding',
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                'Whom to sell',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                          ListView(
                                            shrinkWrap: true,
                                            children: const [
                                              WhomToSellCard(
                                                text: 'Cred',
                                                image: 'assets/credlogo.png',
                                              ),
                                              WhomToSellCard(
                                                text: 'PayTm',
                                                image:
                                                    'assets/paytm-logo-icon.webp',
                                              ),
                                              WhomToSellCard(
                                                text: 'Ambuja Cement',
                                                image:
                                                    'assets/ambuja-cement-giant.jpg',
                                              ),
                                              WhomToSellCard(
                                                text: 'Asian Paints',
                                                image:
                                                    'assets/asian-paints-logo.png',
                                              ),
                                              // WhomToSellCard(
                                              //   text: 'Jio',
                                              //   image: 'assets/Reli',

                                              // )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .primaryColorLight),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 400,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'Featured News',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      ListView(
                                        shrinkWrap: true,
                                        children: const [
                                          WhomToSellCard(
                                            text: 'Cred',
                                            image: 'assets/credlogo.png',
                                          ),
                                          WhomToSellCard(
                                            text: 'PayTm',
                                            image:
                                                'assets/paytm-logo-icon.webp',
                                          ),
                                          WhomToSellCard(
                                            text: 'Ambuja Cement',
                                            image:
                                                'assets/ambuja-cement-giant.jpg',
                                          ),
                                          WhomToSellCard(
                                            text: 'Asian Paints',
                                            image:
                                                'assets/asian-paints-logo.png',
                                          ),
                                        ],
                                      )
                                    ],
                                  )))
                        ],
                      ),
                    ),
                    const Text(
                      'Performance Metrics',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      height: 250,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                ),
                                height: 220,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                ),
                                height: 220,
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                ),
                                height: 220,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
          },
        )
      }),
    );
  }
}
