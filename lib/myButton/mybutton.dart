import 'package:flutter/material.dart';
import 'package:signin/loginApp/login.dart';

class MyButton extends StatelessWidget {

  MyButton({required this.image, required this.text, required this.color, required this.radius, required this.onPressed});

  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    final LogIn logIn = LogIn();
    logIn.buildButton();

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        minimumSize: const Size.fromHeight(50),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius)
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          image,
          text,
          Opacity(
            opacity: 0.0,
            child: Image.asset('assets/glogo.png'),
          ),
        ],
      ),
    );
  }
}
