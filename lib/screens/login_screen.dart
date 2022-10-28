import 'package:flutter/material.dart';
import 'package:classified_app/custom_widgets/welcome_widget.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginScreen> {

  
  String genderVal = "male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Center(
        
           child: Column(
             children: [
              const Welcome(),

               SizedBox(
                width: 350,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                 
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0))),
                        labelText: "Email Address",
                        labelStyle: TextStyle(
                            fontSize: 30,
                            color: Color(0xffe5e5e5),
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
              
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0))),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            fontSize: 30,
                            color: Color(0xffe5e5e5),
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                 
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                 
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.only(
                                top: 15, bottom: 15, right: 30, left: 30)),
                       // backgroundColor: MaterialStateProperty.all<Color>( const Color(0xff3f72af)),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            const RoundedRectangleBorder()),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
          ),
        ),
             ],
           )));
  }
}