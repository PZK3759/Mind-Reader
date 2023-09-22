import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mind_reader/pages/ResultScreen.dart';

class WaitingScreen extends StatefulWidget {
  const WaitingScreen({super.key});

  @override
  State<WaitingScreen> createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {

  @override
  void initState() {
    super.initState();
    interpretThoughts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/app-logo.png"),
          SizedBox(height: 10,),
          SpinKitWave(color: Colors.red,),
          Text("Capturing neurotransmitter signals.",style: TextStyle(fontSize: 25),),
          Text("Please be patient.", style: TextStyle(fontSize: 25),),
        ],
      ),

    ));
  }

  void interpretThoughts(){

    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ResultScreen()));
    });

  }

}
