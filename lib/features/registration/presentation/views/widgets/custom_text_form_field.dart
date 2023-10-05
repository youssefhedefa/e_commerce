import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
        this.keyboardType,
        required this.label,
        required this.onChanged,
        this.validator,
        this.suffixIcon, required this.obscureText, this.focusNode,
      })
      : super(key: key);

  final TextInputType? keyboardType;
  final String label;
  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool obscureText;
  final FocusNode? focusNode;

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
      focusNode: focusNode,
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
    );
  }
}
