import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mind_reader/Global.dart';
import 'package:mind_reader/app_icons.dart';
import 'package:mind_reader/pages/HelpPage.dart';
import 'package:mind_reader/pages/WaitingScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController thoughtsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: const Icon(AppIcons.brain), //later change to custom icon
        title: const Text("Mind Reader"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpPage()));
              },
              icon: const Icon(Icons.question_mark))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/app-logo.png"),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Enter your thoughts below",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: thoughtsController,
              decoration: const InputDecoration(
                  label: Text("Your thoughts"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.red, width: 3),
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.redAccent),
              ),
              onPressed: () {
                if (thoughtsController.text.length < 3) {
                  Fluttertoast.showToast(
                      msg: "write something",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                } else {
                  thoughts = thoughtsController.text.trim();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => WaitingScreen()));
                }
              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Read My Mind",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              )),
        ],
      ),
    ));
  }
}
