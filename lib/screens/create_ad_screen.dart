import 'package:flutter/material.dart';

class CreateAdScreen extends StatefulWidget {
  const CreateAdScreen({super.key});

  @override
  State<CreateAdScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CreateAdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Create Ad",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        body: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),

            //add photo
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xff898888), width: 0.5)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(size: 60, Icons.add_photo_alternate_outlined),
                    SizedBox(height: 7),
                    Text("Tap  to upload",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ]),
            ),
            const SizedBox(height: 15),
            //images

            //text forms
            SizedBox(
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  //title
                  TextFormField(
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      labelText: "Title",
                      alignLabelWithHint: true,
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  //Price
                  TextFormField(
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      labelText: "Price",
                      alignLabelWithHint: true,
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  //Contact number
                  TextFormField(
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      labelText: "Contact Number",
                      alignLabelWithHint: true,
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  //Description
                  TextFormField(
                    maxLines: 4,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      labelText: "Description",
                      alignLabelWithHint: true,
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  //Submit Ad button
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30)),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                      ),
                      child: const Text(
                        "Submit Ad",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
