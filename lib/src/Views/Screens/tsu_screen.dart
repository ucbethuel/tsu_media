import 'package:flutter/material.dart';
import 'package:tsu_media/src/Views/Screens/degportal.dart';
import 'package:tsu_media/src/Views/Screens/online_app.dart';
import 'package:tsu_media/src/Views/Screens/tsu_main_portal.dart';

class TsuPortal extends StatefulWidget {
  const TsuPortal({super.key});

  @override
  State<TsuPortal> createState() => _TsuPortalState();
}

class _TsuPortalState extends State<TsuPortal> {
  int _currentPage = 1;
  List<Widget> screens = const [
    DegPortalScreen(),
    TsuMainScreen(),
    OnlineAppScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            icon: Icon(Icons.school_outlined),
            label: "Degportal",
          ),
          NavigationDestination(
            icon: Icon(Icons.home_max_outlined),
            label: "Main",
            selectedIcon: Icon(Icons.home_max),
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.book_online),
            icon: Icon(Icons.book_online_outlined),
            label: "Online-App",
          ),
        ],
        onDestinationSelected: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        selectedIndex: _currentPage,
      ),
    );
  }
}
