import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  String image;
  String title;
  String price;

  Product({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        width: 350,
        margin: EdgeInsets.all(10),
        color: Colors.yellow,
        child: Stack(
          children: [
            Container(
              height: 350,
              width: 350,
              child: Image.asset(image, height: 350, width: 350),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.all(8),
                  child: const Icon(
                      size: 25, color: Colors.black, Icons.favorite_border)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 52,
                width: 50,
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "   $title",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "    \$$price",
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
