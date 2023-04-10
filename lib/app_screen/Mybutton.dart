import 'package:flutter/material.dart';

class MyBut extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyBut({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        color: Theme.of(context).primaryColor,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
