import 'package:flutter/material.dart';



class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.image,
      required this.onPressed});

  final String image;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: GestureDetector(
        onTap: onPressed,
        child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset(image)),
      ),
    );
  }
}
