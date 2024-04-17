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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //logo
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 85.0,
                  width: 85.0,
                ),
              ),
            ],
          ),
          //Developer quick profile
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              VerticalDivider(
                color: Colors.black,
                thickness: 100,
              ),

              // Column(
              //   children: [
              //     Text("Developed by"),
              //     Text(
              //       "ucbethuel",
              //       style: TextStyle(letterSpacing: 5.0),
              //     ),
              //   ],
              // ),
            ],
          )
        ],
      ),
    );
  }
}
