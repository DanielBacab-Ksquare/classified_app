import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellow,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("images/merida.jpg", fit: BoxFit.cover),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 200,
                width: 400,
                child: Row(
                  children: [
                    const Icon(
                        size: 45, color: Colors.white, Icons.sell_outlined),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        Text(
                          "CLASSIFIED APP",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Text(
                          "SELL ANYTHING INSTANTLY",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
