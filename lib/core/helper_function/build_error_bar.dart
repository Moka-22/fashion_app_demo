import 'package:fashion_app/core/utils/app.colors.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/auth_text_widget.dart';
import 'package:flutter/material.dart';

void buildErrorBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.primaryColor,
      content: AuthTextWidget(text: message),
    ),
  );
}
