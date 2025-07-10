import 'package:fashion_app/core/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
  });
  final void Function(String?)? onSaved;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? const Icon(Icons.visibility_off_outlined)
            : const Icon(Icons.remove_red_eye_outlined),
      ),
      hintText: 'Password',
      textInputType: TextInputType.visiblePassword,
    );
  }
}
