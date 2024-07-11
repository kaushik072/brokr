import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? label;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  const CommonTextField({
    super.key,
    this.textEditingController,
    this.label,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText,
      style: GoogleFonts.inter(color: Theme.of(context).colorScheme.shadow),
      validator: validator,
      decoration: InputDecoration(
          labelText: label,
          suffixIcon: suffixIcon,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface, width: 1)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface, width: 1))),
    );
  }
}
