import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: 80, // Width of the circle
                height:
                    80, // Height of the circle (same as width for roundness)
                decoration: BoxDecoration(
                  color: const Color(0xff4157FF), // Background color
                  shape: BoxShape.circle, // Circular shape
                  border: Border.all(
                    color: Colors.white, // Border color
                    width: 4, // Border thickness
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.local_hospital_rounded,
                    color: Colors.white,
                    size: 60, // Adjust the size of the icon
                  ),
                ),
              ),
              const Text(
                "Quick Medical",
                style: TextStyle(color: Colors.black, fontSize: 30),
              )
            ],
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Please Enter your Mobile Number to Login/SignUp",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "+92 3163522270",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          width: 2,
                          color: Color(0xff4157FF),
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.black,
                          style: BorderStyle.solid),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
