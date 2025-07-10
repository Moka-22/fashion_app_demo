import 'package:fashion_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:fashion_app/features/on_boarding/presentation/widgets/dots_widget.dart';
import 'package:fashion_app/features/on_boarding/presentation/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingWidget extends StatefulWidget {
  const OnBoardingWidget({super.key});

  @override
  State<OnBoardingWidget> createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              OnBoardingPageView(pageController: pageController),
              Positioned(
                bottom: 200,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: DotsWidget(currentPage: currentPage),
                ),
              ),
              Positioned(
                bottom: 120,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      side: const BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => SignInView()),
                      );
                    },
                    child: const Text(
                      'Shopping Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
