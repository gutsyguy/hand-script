import 'package:flutter/material.dart';
import 'package:handscript/navigation/BottomNavbar.dart';
import 'package:handscript/widgets/CameraStreamWidget.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("e")],
            ),
            Center(
              child: CameraStreamWidget(),
            ),
          ],
        ));
  }
}
