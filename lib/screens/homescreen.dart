import 'package:flutter/material.dart';
import 'package:handscript/navigation/BottomNavbar.dart';
import 'package:handscript/widgets/CameraStreamWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.7, // 50% of screen height
            width: screenWidth, // 80% of screen width
            child: const CameraStreamWidget(),
          ),
        ],
      ),
    );
  }
}
