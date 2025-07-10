import 'package:flutter/material.dart';

import 'widgets/sign_up_view_widget_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: SignupViewWidgetBlocConsumer());
  }
}
