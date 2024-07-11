import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTextView extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final Color? decorationColor;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final String? fontFamily;
  final double? height;
  final bool isShowUnderline;
  final TextOverflow? overflow;

  const CommonTextView(this.text,
      {super.key,
      this.height,
      this.overflow,
      this.color,
      this.fontWeight,
      this.decorationColor,
      this.fontFamily,
      this.fontSize,
      this.isShowUnderline = false,
      this.letterSpacing,
      this.maxLines,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
      style: GoogleFonts.inter(
        height: height,
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        decoration: isShowUnderline ? TextDecoration.underline : null,
        decorationColor: decorationColor,
        decorationThickness: 2,
      ),
    );
  }
}
