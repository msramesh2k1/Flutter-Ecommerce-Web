import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CText extends StatelessWidget {
  final String text;
  final FontWeight? weight;
  final double? size;
  final Color? color;
  final double? spacing;
  const CText(
      {Key? key,
      required this.text,
      this.weight,
      required this.size,
      this.color,
      this.spacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.ubuntu(
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.bold,
          fontSize: size,
          letterSpacing: spacing ?? 0),
    );
  }
}
