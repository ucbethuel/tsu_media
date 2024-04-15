import 'package:flutter/material.dart';
import 'package:tsu_media/src/Views/Screens/degportal.dart';
import 'package:tsu_media/src/Views/Screens/tsu_screen.dart';
import 'package:tsu_media/src/Views/Screens/lunch_screen.dart';
import 'package:tsu_media/src/global_constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TSU Portal',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF696cff),
        ),
      ),
      initialRoute: lunch,
      routes: {
        lunch: (context) => const LunchScreen(),
        home: (context) => const TsuPortal(),
        degportal: (context) => const DegPortalScreen(),
      },
    );
  }
}
