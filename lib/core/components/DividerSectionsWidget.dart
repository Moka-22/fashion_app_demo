import 'package:fashion_app/core/utils/app.colors.dart';
import 'package:flutter/material.dart';


class Dividersectionswidget extends StatelessWidget {
  const Dividersectionswidget({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: AppColors.dividerColor,
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.dividerColor,
          ),
        ),
      ],
    );
  }
}


