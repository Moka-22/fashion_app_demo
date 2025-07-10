import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class DotsWidget extends StatelessWidget {
  const DotsWidget({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: currentPage.toDouble(),
      decorator: DotsDecorator(
        activeColor: Colors.white,
        color: Colors.grey,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
