import 'package:fashion_app/features/on_boarding/presentation/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnBoardingWidget(),
      ),
    );
  }
}
