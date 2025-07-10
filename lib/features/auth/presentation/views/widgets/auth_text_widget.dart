import 'package:flutter/material.dart';

class AuthTextWidget extends StatelessWidget {
  const AuthTextWidget({
    super.key,
    required this.text,
    this.color = const Color(0xff000000),
  });
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 12,
      ),
    );
  }
}
