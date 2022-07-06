import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String? hinttext;

  final IconData? myIcon;
  CustomTextField({this.hinttext, this.myIcon});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration:  InputDecoration(
          hintText: hinttext!,
          icon: Icon(myIcon ?? Icons.home),
        ),
    );
  }
}
