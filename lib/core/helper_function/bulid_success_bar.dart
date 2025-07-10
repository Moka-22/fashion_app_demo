import 'package:fashion_app/core/utils/app.colors.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/auth_text_widget.dart';
import 'package:flutter/material.dart';


void successSign(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.primaryColor,
      content: AuthTextWidget(text: 'Sign Up Successfully'),
    ),);
}
void successSignIn(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.primaryColor,
      content: AuthTextWidget(text: 'Sign In Successfully'),
    ),);
}
  void successUpdateName(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.primaryColor,
        content: AuthTextWidget(text: 'Update Name Successfully'),
      ),);
}
