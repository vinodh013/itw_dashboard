import 'package:flutter/material.dart';

class ScrollingAssets extends StatefulWidget {
  const ScrollingAssets(
      {Key? key, required this.categoryName, this.titles, this.images})
      : super(key: key);

  final String categoryName;
  final List<String>? titles;
   final List<String>? images;

  @override
  _ScrollingAssetsState createState() => _ScrollingAssetsState();
}

class _ScrollingAssetsState extends State<ScrollingAssets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 350,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              widget.categoryName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.titles != null ? widget.titles!.length : 5,
              itemBuilder: (context, index) {
                return InkWell(
                  // onTap: () {

                  // },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceInOut,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context)
                                .colorScheme
                                .primaryContainer)),
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    height: 350,
                    width: 250,
                    child: widget.titles != null
                        ? Stack(
                            children: [
                              Container(
                                child: Image.asset(
                                  height: 350,
                                  width: 250,
                                  fit: BoxFit.cover,
                                  widget.images![index],
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              Column(
                                children: [
                                  Spacer(),
                                  Container(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceVariant,
                                    height: 50,
                                    width: 250,
                                    child: Center(
                                      child: Text(
                                        widget.titles![index],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 25,
                                  // )
                                ],
                              ),
                            ],
                          )
                        : SizedBox(),
                    // transform: transform,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
