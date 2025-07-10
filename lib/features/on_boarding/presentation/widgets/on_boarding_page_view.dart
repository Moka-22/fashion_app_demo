import 'package:fashion_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: Assets.imagesOnBoardingImagesOnboarding1,
          subTitle:
              'Special new arrivals just for you',
          title: 'Discover something new',
        ),
        PageViewItem(
          image: Assets.imagesOnBoardingImagesOnboarding2,
          subTitle:
              'Favorite brands and hottest trends',
          title: 'Update trendy outfit',
        ),
        PageViewItem(
          image: Assets.imagesOnBoardingImagesOnboarding3,
          subTitle:
              'Relax and let us bring the style to you',
          title: 'Explore your true style',
        ),
      ],
    );
  }
}
