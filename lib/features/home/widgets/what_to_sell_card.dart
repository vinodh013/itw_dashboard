import 'package:flutter/material.dart';

class WhatToSellCard extends StatelessWidget {
  const WhatToSellCard({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
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
        child: Center(child: Text(text),)
      ),
    );
  }
}
