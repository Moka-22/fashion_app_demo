import 'package:flutter/material.dart';

class SubTitleTextWidget extends StatelessWidget {
  const SubTitleTextWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
    );
  }
}
