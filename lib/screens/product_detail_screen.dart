import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailScreen extends StatefulWidget {
  final Map productToDisplay;
  const ProductDetailScreen({super.key, required this.productToDisplay});

  _openNumber(url) async {
    url = Uri.parse(url);
    if (await launchUrl(url)) {
      await canLaunchUrl(url);
    } else {
      print("Error");
    }
  }

  @override
  State<ProductDetailScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SizedBox(
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Text(
                    widget.productToDisplay["title"],
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("\$${widget.productToDisplay["price"]}",
                      style: const TextStyle(
                          fontSize: 20,
                          color: Color(0xffff8540),
                          fontWeight: FontWeight.w700)),
                  GestureDetector(
                    onTap: () {
                      //here goes the ImageViewerScreen (carousel)

                    },
                    child: Image.asset(
                      widget.productToDisplay["images"][0],
                      height: 250,
                      width: double.infinity,
                    ),
                  ),

                  //Seller and time
                  Row(
                    children: [
                      const Icon(
                          size: 15,
                          color: Color(0xff898888),
                          Icons.person_outline),
                      Text(widget.productToDisplay["sellerName"],
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff898888)),
                          textAlign: TextAlign.left),
                      const SizedBox(width: 20),
                      const Icon(
                          size: 15,
                          color: Color(0xff898888),
                          Icons.access_time),
                      Text(" ${widget.productToDisplay["time"]} days ago",
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff898888)),
                          textAlign: TextAlign.left),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Text(
                    widget.productToDisplay["description"],
                    style: const TextStyle(fontSize: 17),
                  ),
                  const SizedBox(height: 20),
                  //Contact seller button
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        widget._openNumber(
                          "tel:+${widget.productToDisplay["contactNumber"]}");
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.only(
                                top: 15, bottom: 15, right: 30, left: 30)),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            const RoundedRectangleBorder()),
                      ),
                      child: const Text(
                        "Contact seller",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
