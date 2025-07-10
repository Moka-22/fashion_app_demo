import 'package:flutter/material.dart';

class HomeTextWidget extends StatelessWidget {
  const HomeTextWidget({super.key, required this.text, this.fontWeight, this.color});
  final String text;
  final FontWeight? fontWeight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: fontWeight,
      ),
    );
  }
}
