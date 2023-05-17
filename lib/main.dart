import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MagicBallPage(),
  ));
}

class MagicBallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: Text("Ask me Anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: BallView(),
    );
  }
}

class BallView extends StatefulWidget {
  @override
  State<BallView> createState() => _BallViewState();
}


class _BallViewState extends State<BallView> {
  int ballNumber = 1;

  void ballChanger() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Ask your question and tap on the ball",
            textAlign: TextAlign.center,
            style: TextStyle(

              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            width: 10,
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              ballChanger();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            child: Image.asset("images/ball$ballNumber.png"),

          ),
        ],
      ),
    );
  }
}

