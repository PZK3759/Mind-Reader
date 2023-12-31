import 'package:flutter/material.dart';
import 'package:mind_reader/Global.dart';
import 'package:mind_reader/app_icons.dart';
import 'package:mind_reader/pages/HomePage.dart';

// ignore_for_file: prefer_const_constructors

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: const Icon(AppIcons.brain),
        title: const Text("NeuroThought Interceptor"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/resultpage-logo.png"),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              "Your thoughts were:",
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Card(
            color: Colors.white70,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                thoughts!,
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.redAccent),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("Try Again",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ))
        ],
      ),
    ));
  }
}
