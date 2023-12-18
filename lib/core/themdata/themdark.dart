import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts/consts.dart';

ThemeData themedata() {
  return ThemeData(
    fontFamily: "Merriweather",
    scaffoldBackgroundColor: color_app,
    textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
  );
}
