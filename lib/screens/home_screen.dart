import 'package:classified_app/custom_widgets/product.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List _ads = [
    {
      "title": "iPhone 11 for sale",
      "price": 12000,
      "images": [
        "images/iphone11_1.jpg",
        "images/iphone11_2.jpg",
        "images/iphone11_3.jpg",
      ]
    },
    {
      "title": "iPhone 12 for sale",
      "price": 15000,
      "images": [
        "images/iphone12_1.jpg",
        "images/iphone12_2.jpg",
        "images/iphone12_3.jpg",
      ]
    },
    {
      "title": "Used Macbook for sale",
      "price": 14000,
      "images": [
        "images/mac_1.jpg",
        "images/mac_2.jpg",
        "images/mac_3.jpg",
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ads Listing"),
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                //padding: const EdgeInsets.all(15),
                child: Image.asset(
                  "images/profile.jpg",
                  height: 20,
                  width: 20,
                ))
          ],
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              childAspectRatio: 1,
            ),
            itemCount: _ads.length,
            itemBuilder: (context, index) {
              return Product(
                  image: _ads[index]["images"][0],
                  title: _ads[index]["title"],
                  price: _ads[index]["price"].toString());
            }));
  }
}
