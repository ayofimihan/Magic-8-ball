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
        backgroundColor: Colors.lightBlueAccent,
        title: Center(child: Text('Ask me Anything')),
      ),
body: Ball(),    );
  }
}


class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 2;
  void randomBall (){
    setState(() {
      ballNumber = Random().nextInt(4)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Let me make all of your decisions for you')
      ),
      color: Colors.black12,),
    Center(child: TextButton(child: Image.asset('images/ball$ballNumber.png'),
    onPressed: (){randomBall();}
    ),
    ),
      Card(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('You can press it multiple times lol, i wont tell 😉'),
      ),
      color: Colors.black12,)]
    );
  }
}


