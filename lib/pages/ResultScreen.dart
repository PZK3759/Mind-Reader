import 'package:flutter/material.dart';
import 'package:mind_reader/pages/HomePage.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.redAccent,
    leading: const Icon(Icons.adb), //later change to custom icon
    title: const Text("Mind Reader"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
          }, child: Text("Back to home"))
        ],
      ),
    ));
  }
}
