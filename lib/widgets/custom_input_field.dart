import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final TextInputType? textInputType;
  final bool obscureText;
  final IconData? suffixIcon;
  final IconData? icon;

  final String formProperty;
  final Map<String, dynamic> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.counterText,
    this.suffixIcon,
    this.icon,
    this.textInputType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      keyboardType: textInputType,
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText ?? "",
        labelText: labelText ?? "",
        helperText: helperText ?? "",
        counterText: counterText ?? "",
        // prefixIcon: Icon(Icons.verified_user),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
