import 'package:fashion_app/core/components/second_head_line_text.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.width,
    required this.backGroundColor,
    this.borderColor,
  });
  final VoidCallback onPressed;
  final String text;
  final double width;
  final Color backGroundColor;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          side: BorderSide(
            color: borderColor ?? Colors.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          backgroundColor: backGroundColor,
        ),
        onPressed: onPressed,
        child: SecondHeadLineText(
          text: text,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
