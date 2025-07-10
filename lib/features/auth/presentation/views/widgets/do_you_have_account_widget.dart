import 'package:fashion_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/auth_text_widget.dart';
import 'package:flutter/material.dart';


class DoYouHaveAccountWidget extends StatelessWidget {
  const DoYouHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthTextWidget(
          text: 'Do you have an account?',
          color: Color(0xFF979797),
        ),
        const SizedBox(
          width: 4,
        ),
        GestureDetector(
          child: AuthTextWidget(
            text: 'Sign In',
          ),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => SignInView(),
              ),
            );
          },
        ),
      ],
    );
  }
}
