import 'package:flutter/material.dart';

class HeadLineText extends StatelessWidget {
  const HeadLineText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}
