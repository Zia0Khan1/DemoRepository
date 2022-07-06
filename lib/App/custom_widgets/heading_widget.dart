import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {

  final String? myText;
  HeadingWidget({this.myText});

  @override
  Widget build(BuildContext context) {
    return Text(myText!,

      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold,

          color: Colors.green),

    );
  }
}


