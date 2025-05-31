
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({
    super.key,
    required this.size,
    required this.elements,
  });

  final Size size;
  final List<List<Widget>> elements;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, left: 12.0),
      child: Column(
        children: [
          ClipRRect(
            // clipBehavior: Clip.hardEdge,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)),
            child: Image.asset(
              "images/progres1.png",
              fit: BoxFit.fitWidth,
              height: size.width > 400 ? 150 : 90,
              width: size.width,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  print(constraints.maxHeight);
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: size.width < 400 ? 2 : 3,
                        mainAxisExtent: 65,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 10
                      // childAspectRatio: 3,
                    ),
                    itemCount: elements.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green.withBlue(910),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: elements[index],
                            )),
                      );
                    },
                  );
                }),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}