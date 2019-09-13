import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      Ball(),
    );

class Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Ask Me Something',
              style: TextStyle(
                fontFamily: 'Pacifico',
              ),
            ),
          ),
          backgroundColor: Colors.blue[400],
        ),
        body: BallChange(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BallChange extends StatefulWidget {
  @override
  _BallChangeState createState() => _BallChangeState();
}

class _BallChangeState extends State<BallChange> {
  int ballNumber = 1;

  void randomiseBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              randomiseBall();
            },
            color: Colors.blue[900],
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ],
    );
  }
}
