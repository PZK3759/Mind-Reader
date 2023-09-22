import 'package:flutter/material.dart';
import 'package:mind_reader/pages/HomePage.dart';
import 'package:mind_reader/pages/SplashScreen.dart';

void main() {
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
