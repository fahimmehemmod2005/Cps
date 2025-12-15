import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Custom_Rich_Text extends StatelessWidget {
  final String firstText;
  final String secondText;
  final VoidCallback onTap;
  const Custom_Rich_Text({
    super.key, required this.firstText, required this.secondText, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: firstText,
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(color: Color(0xff9C3AFF)),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}