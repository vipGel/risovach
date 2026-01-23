import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppThemeData {
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: Color.fromRGBO(96, 68, 144, 0.3),
      // scaffoldBackgroundColor: Colors.black,
      textTheme: GoogleFonts.robotoTextTheme(),

      appBarTheme: AppBarTheme(

        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(196, 196, 196, 0.01),
        // backgroundColor: Color.fromRGBO(96, 68, 144, 0.9),

        // backgroundColor: Color(0x6044904D),
        titleTextStyle: TextStyle().copyWith(color: Color(0xFFEEEEEE), fontSize: 17, fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
        ),
      ),
    );
  }
}
