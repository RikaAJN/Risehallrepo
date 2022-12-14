import 'dart:async';
import 'package:flutter/material.dart';

import '../onboarding/onboarding.dart';
import '../onboarding1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final _storage = const FlutterSecureStorage();
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // backgroundColor: Color.fromARGB(255, 16, 81, 134),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/risehall_white.png',
            ),
            //const SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }

  void startTimer() async {
    // String? token = await _storage.read(key: 'token');
    // print(token);
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Onboardings(),
        ),
      );
      // if (token != null && token != '') {
      //   navigate(context, const MainApp());
      // } else {
      //   navigate(context, const Onboarding());
      // }
    });
  }
}
