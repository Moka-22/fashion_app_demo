import 'package:fashion_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/auth_text_widget.dart';
import 'package:flutter/material.dart';


class DonotHaveAccountWidget extends StatelessWidget {
  const DonotHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthTextWidget(
          text: 'Don\'t have an account?',
          color: Color(0xFF979797),
        ),
        const SizedBox(
          width: 4,
        ),
        GestureDetector(
          child: AuthTextWidget(
            text: 'Sign Up',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SignUpView(),
              ),
            );
          },
        ),
      ],
    );
  }
}
