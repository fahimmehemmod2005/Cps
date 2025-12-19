import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffCDD6FF), Color(0xffE6D4FF)],
        ),
      ),
      child: SafeArea(top: true, bottom: true, child: child),
    );
  }
}
