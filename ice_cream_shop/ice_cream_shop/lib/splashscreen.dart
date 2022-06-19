import 'package:flutter/material.dart';
import 'registrasi.dart';
import 'landingpage.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashScreenStart();
    super.initState();
  }

  splashScreenStart() {
    var duration = Duration(seconds: 8);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return landingpage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 111, 161),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "ICE CREAM STORE",
              style: TextStyle(
                color: Color.fromARGB(255, 204, 142, 163),
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Icon(
              Icons.icecream_outlined,
              size: 100,
              color: Color.fromARGB(255, 204, 142, 163),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "versi 2.0",
              style: TextStyle(
                color: Color.fromARGB(255, 204, 142, 163),
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
