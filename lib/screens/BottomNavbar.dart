import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:handscript/screens/homescreen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() => runApp(const BottomNavBar());

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  State<BottomNavBar> createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget currentScreen;
    if (_currentIndex == 0) {
      currentScreen = const HomeScreen();
    } else if (_currentIndex == 1) {
      currentScreen = const HomeScreen();
    } else {
      currentScreen = const HomeScreen();
    }

    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.blue,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blue,
            gap: 8,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
                if (kDebugMode) {
                  print(_currentIndex);
                }
              });
            },
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.handshake, text: "Translate"),
              GButton(icon: Icons.mic, text: 'Speak'),
              GButton(icon: Icons.settings, text: 'Settings')
            ],
          ),
        ),
      ),
    );
  }
}
