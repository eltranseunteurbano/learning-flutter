import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final bool? autofocus;
  final TextInputType? keyboardType;
  final bool? obscureText;

  final String labelText;
  final String placeholder;
  final String? helperText;
  final String? counterText;

  final IconData? icon;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    required this.labelText,
    required this.placeholder,
    this.helperText,
    this.counterText,
    this.icon,
    this.prefixIcon,
    this.suffixIcon,
    this.autofocus = false,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus ?? false,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: placeholder,
        helperText: helperText,
        counterText: counterText,
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Este campo es requerido';
        }
        return value.length < 3 ? 'Minimo 3 caracteres' : null;
      },
    );
  }
}
