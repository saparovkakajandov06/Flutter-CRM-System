import 'package:flutter/material.dart';
import 'package:bagtsaher/accounts/create.dart';

class Button extends StatelessWidget {
  final String btnText;

  Button({this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Center(
        child: Text(
          "$btnText",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}