import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Custom_Rich_Text extends StatelessWidget {
  final String firstText;
  final String secondText;
  final String? thirdText;
  final String? fourthText;
  final VoidCallback? onTap;
  final VoidCallback? onPressed;
  final TextStyle? firstStyle;
  final TextStyle? secondStyle;
  final TextStyle? thirdStyle;
  final TextStyle? fourthStyle;
  const Custom_Rich_Text({
    super.key,
    required this.firstText,
    required this.secondText,
    this.onTap,
    this.thirdText,
    this.fourthText,
    this.onPressed,
    this.firstStyle,
    this.secondStyle,
    this.thirdStyle,
    this.fourthStyle,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: firstText,
            style: firstStyle ?? TextStyle(color: Colors.black, fontSize: 13),
          ),
          TextSpan(
            text: secondText,
            style:secondStyle ?? TextStyle(color: Color(0xff9C3AFF), fontSize: 13),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
          TextSpan(
            text: thirdText,
            style:thirdStyle ?? TextStyle(color: Colors.black, fontSize: 13),
          ),
          TextSpan(
            text: fourthText,
            style:fourthStyle ?? TextStyle(color: Color(0xff9C3AFF), fontSize: 13),
            recognizer: TapGestureRecognizer()..onTap = onPressed,
          ),
        ],
      ),
    );
  }
}
