import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    this.prefixIcon,
    this.onSaved,
    this.obscureText = false,
  });
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      obscureText: obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This Field is Required';
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xff000000)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
