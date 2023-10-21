import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static Widget inconsolataTextWidget(
      {BuildContext? context,
      required String title,
      double? fontSize,
      FontWeight? fontWeight,
      Color? color}) {
    return Text(
      title,
      style: GoogleFonts.inconsolata(
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? Colors.black),
    );
  }

  static Widget normalCenterTextWidget(
      {BuildContext? context,
      required String title,
      double? fontSize,
      FontWeight? fontWeight,
      Color? color}) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.inter(
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
      ),
    );
  }

  static Widget normalTextWidget(
      {BuildContext? context,
      required String title,
      double? fontSize,
      FontWeight? fontWeight,
      Color? color}) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
      ),
    );
  }
}
