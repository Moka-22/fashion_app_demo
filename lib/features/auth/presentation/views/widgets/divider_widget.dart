import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFF979797),
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Text('or log in with'),
        SizedBox(
          width: 18,
        ),
        Expanded(
          child: Divider(
            color: Color(0xFF979797),
          ),
        ),
      ],
    );
  }
}
