import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class NewsCard extends ConsumerWidget {
  const NewsCard({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 80,
      child: Container(
          margin: EdgeInsets.all(5),
          height: 80,
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
                backgroundImage: AssetImage('image'),

                // child: Image.asset(image),
              ),
              SizedBox(
                width: 20,
              ),
              Text("text")
            ],
          )),
    );
  }
}