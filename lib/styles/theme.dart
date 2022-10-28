import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  var theme = ThemeData(
    primarySwatch:  Colors.orange,
    textTheme: GoogleFonts.latoTextTheme(),
    appBarTheme: const AppBarTheme(
      
      foregroundColor: Color(0xfff25723),
      color: Colors.green,
    ),
  );
}
