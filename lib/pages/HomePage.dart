import 'package:flutter/material.dart';
import 'package:mind_reader/pages/HelpPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            leading: const Icon(Icons.adb), //later change to custom icon
            title: const Text("Mind Reader"),
            actions: [
              IconButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpPage()));
              }, icon: const Icon(Icons.question_mark))
            ],

          ),
        ));
  }
}
