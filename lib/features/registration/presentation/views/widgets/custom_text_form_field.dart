import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
        this.keyboardType,
        required this.label,
        required this.onChanged,
        this.validator,
        this.suffixIcon, required this.obscureText,
      })
      : super(key: key);

  final TextInputType? keyboardType;
  final String label;
  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(
          label,
        ),
        suffixIcon: suffixIcon,
      ),
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
    );
  }
}
