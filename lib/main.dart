import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Ballpage(),
      ),
    );
class Ballpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(child: Text('ASK ME ANYTHING')),
      ),
      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            ballnumber= Random().nextInt(5)+1;
          });

        },
        child: Image.asset('images/ball$ballnumber.png'),
      ),

    );
  }
}
