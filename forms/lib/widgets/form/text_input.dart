import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String label;
  final String? hint;
  final bool autofocus;
  final bool autocorrect;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final bool obscureText;

  const TextInput(
      {super.key,
      required this.label,
      this.hint,
      this.autofocus = false,
      this.autocorrect = false,
      this.keyboardType = TextInputType.text,
      this.prefixIcon,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autocorrect: autocorrect,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple, width: 2)),
            border: const OutlineInputBorder(borderSide: BorderSide()),
            labelText: label,
            hintText: hint,
            labelStyle: const TextStyle(color: Colors.deepPurple),
            // focusColor: Colors.deepPurple,
            prefixIcon: prefixIcon != null
                ? Icon(
                    prefixIcon,
                    color: Colors.deepPurple,
                  )
                : null));
  }
}
