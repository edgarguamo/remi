import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle getTytleTextStyle() {
  return GoogleFonts.graduate(fontSize: 20, fontWeight: FontWeight.w600);
}

TextStyle getSubTitleTextStyle() {
  return GoogleFonts.graduate(fontSize: 18, fontWeight: FontWeight.w500);
}

TextStyle getSentenceTextStyle() {
  return GoogleFonts.graduate(fontSize: 14);
}

OutlineInputBorder getBorderSizeSentenceStyle() {
  return OutlineInputBorder(
      borderSide: BorderSide(width: 1.1, color: Colors.black38),
      borderRadius: BorderRadius.circular(10));
}

OutlineInputBorder getBorderRadiusSentenceStyle() {
  return OutlineInputBorder(
      borderSide: BorderSide(
        width: 3,
        color: Colors.blue,
      ),
      borderRadius: BorderRadius.circular(10));
}
