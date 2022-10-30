import 'package:classified_app/custom_widgets/product.dart';
import 'package:flutter/material.dart';
import 'package:classified_app/data/products_info.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final adsInfo = ProductsInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ads Listing"),
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            //To the settings screen
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/settings");
              },
              child: const CircleAvatar(
                maxRadius: 25,
                backgroundImage: AssetImage('images/profile_1.jpg'),
              ),
            )
          ],
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              childAspectRatio: 0.75,
            ),
            itemCount: adsInfo.ads.length,
            itemBuilder: (context, index) {
              return Product(
                  image: adsInfo.ads[index]["images"][0],
                  title: adsInfo.ads[index]["title"],
                  price: adsInfo.ads[index]["price"]);
            }));
  }
}
