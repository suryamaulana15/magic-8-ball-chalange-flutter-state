import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade500,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text(
              'Ask Me Anything',
            ),
          ),
          body: Magic8Ball(),
        ),
      ),
    );

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({Key key}) : super(key: key);

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int image = 1;
  void changeImage() {
    setState(() {
      image = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
              onPressed: () {
                changeImage();
              },
              child: Image.asset('images/ball$image.png')),
        )
      ],
    );
  }
}
