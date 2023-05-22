import 'package:flutter/material.dart';

class WhomToSellCard extends StatelessWidget {
  const WhomToSellCard({super.key, required this.text, required this.image});

  final String text;
  final String image;
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
          child: Row(
            children: [
              SizedBox(
                width: 25,
              ),
              CircleAvatar(
                //radius: 50,
                backgroundImage: AssetImage(image),

                // child: Image.asset(image),
              ),
              SizedBox(
                width: 20,
              ),
              Text(text)
            ],
          )),
    );
  
  }
}
