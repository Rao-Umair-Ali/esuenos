import 'dart:async';

import 'package:esuenos/Login/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Login(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 1000,
      width: 1000,
      decoration: const BoxDecoration(
          color: Color(0xff4157FF),
          image: DecorationImage(
              image: AssetImage("assets/images/Group.png"), fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80, // Width of the circle
              height: 80, // Height of the circle (same as width for roundness)
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
              style: TextStyle(color: Colors.white, fontSize: 30),
            )
          ],
        ),
      ),
    ));
  }
}
