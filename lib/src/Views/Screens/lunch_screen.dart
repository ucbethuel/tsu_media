import 'package:flutter/material.dart';
import 'package:tsu_media/src/global_constant.dart';

class LunchScreen extends StatefulWidget {
  const LunchScreen({super.key});

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 5)); // Delay for 5 seconds
    Navigator.of(context).pushReplacementNamed(home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Body of the lunch Screen, Everything wrap in the Column widget
        body: Center(
      child: Image.asset(
        "assets/images/logo.png",
        height: 100.0,
        width: 100.0,
      ),
    ));
  }
}
