import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  // ignore_for_file: prefer_const_constructors


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("How does this work"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/helppage-logo.png"),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "This innovative app employs advanced neurotechnology to interpret your thoughts. Simply input your thoughts into the textbox and press the button. The app seamlessly intercepts your brain's neurotransmitter signals, providing real-time insight into your thoughts",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
