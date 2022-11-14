import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/learn_flutter_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const LearnFlutterScreen();
            }),
          );
        },
        child: const Text("home"),
      ),
    );
  }
}
