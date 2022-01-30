import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Global variables

Color background = Color.fromRGBO(250, 244, 232, 1);

// Fonts for titles
TextStyle getTytleTextStyle() {
  return GoogleFonts.ibmPlexSans(
    fontSize: 20,
    fontWeight: FontWeight.w900,
  );
}

TextStyle getSubTitleTextStyle() {
  return GoogleFonts.ibmPlexSans(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.underline,
  );
}

TextStyle getSentenceTextStyle() {
  return GoogleFonts.ibmPlexSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color.fromRGBO(62, 72, 57, 1),
  );
}

TextStyle getTextFormTextStyle() {
  return GoogleFonts.ibmPlexSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

TextStyle getHintTextStyle() {
  return GoogleFonts.ibmPlexSans(
      fontSize: 16,
      color: Color.fromRGBO(62, 72, 57, 0.5),
      fontWeight: FontWeight.bold);
}

// Fonts for forms
TextStyle DescriptionFormTextStyle() {
  return GoogleFonts.ibmPlexSans(
    fontSize: 14,
    color: Color.fromRGBO(62, 72, 57, 1),
    fontStyle: FontStyle.italic,
  );
}

TextStyle TitleFormTextStyle() {
  return GoogleFonts.ibmPlexSans(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
}

TextStyle SubTitleFormTextStyle() {
  return GoogleFonts.ibmPlexSans(
    fontSize: 16,
    color: Colors.black,
  );
}

// Style for outputs form

OutlineInputBorder getBorderSizeSentenceStyle() {
  return OutlineInputBorder(
    borderSide: BorderSide(width: 1.1, color: Colors.blueGrey[500]),
    borderRadius: BorderRadius.circular(10),
  );
}

OutlineInputBorder getBorderRadiusSentenceStyle() {
  return OutlineInputBorder(
      borderSide: BorderSide(
        width: 3,
        color: Colors.lightGreen[700],
      ),
      borderRadius: BorderRadius.circular(10));
}
