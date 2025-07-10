import 'package:fashion_app/core/services/shared_preferences_singleton.dart';
import 'package:fashion_app/core/utils/app_images.dart';
import 'package:fashion_app/core/utils/constants.dart';
import 'package:fashion_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:fashion_app/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:flutter/material.dart';

class SplashViewWidget extends StatefulWidget {
  const SplashViewWidget({
    super.key,
  });

  @override
  State<SplashViewWidget> createState() => _SplashViewWidgetState();
}

class _SplashViewWidgetState extends State<SplashViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.imagesSplashSplashimage,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.black.withValues(alpha: 0.3),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Column(
                children: [
                  Text(
                    'Welcome to GemStore!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'The home for a fashionista',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 53,
                width: 193,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: _handleGetStarted,
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ],
    );
  }

  void _handleGetStarted() {
    bool isBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen) ?? false;

    if (isBoardingViewSeen) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const SignInView()),
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const OnBoardingView()),
      );
    }
  }
}
