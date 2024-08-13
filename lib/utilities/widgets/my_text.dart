import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  const MyText({super.key, required this.text, this.fontSize, this.colour, this.fontWeight, this.align, this.maxLines});
  final String text;
  final double? fontSize;
  final Color? colour;
  final FontWeight? fontWeight;
  final TextAlign? align;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: align, style: GoogleFonts.mulish(color: colour, fontSize: fontSize, fontWeight: fontWeight), overflow: TextOverflow.ellipsis, maxLines: maxLines ?? 5,);
  }
}
