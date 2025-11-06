import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// App color scheme
const brandYellowColor = Color(0xFFF5C249);
const brandDarkColor = Color(0xFF16171D);
const baseWhiteColor = Color(0xFFF8F8F8);
const baseGrayColor = Color(0xFFA7AEBF);
const baseBlackColor = Color(0xFF21242D);

// Text styles
final titleStyle = GoogleFonts.poppins(
  color: baseWhiteColor,
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
);

final subtitleStyle = GoogleFonts.poppins(
  color: baseWhiteColor,
  fontSize: 20.0,
  fontWeight: FontWeight.w600,
);

final bodyStyle = GoogleFonts.poppins(
  color: baseWhiteColor,
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
);

final buttonStyle = GoogleFonts.poppins(
  color: brandDarkColor,
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
);

// App dark theme
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: brandDarkColor,
  colorScheme: ColorScheme.dark(
    primary: brandYellowColor,
    secondary: baseGrayColor,
    surface: baseBlackColor,
    onPrimary: brandDarkColor,
    onSurface: baseWhiteColor,
  ),
  textTheme: TextTheme(
    displayLarge: titleStyle,
    headlineMedium: subtitleStyle,
    bodyMedium: bodyStyle,
    labelLarge: buttonStyle,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: brandDarkColor,
    foregroundColor: baseWhiteColor,
    titleTextStyle: titleStyle,
    iconTheme: const IconThemeData(color: baseWhiteColor),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: brandYellowColor,
      foregroundColor: brandDarkColor,
      textStyle: buttonStyle,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: baseBlackColor,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    hintStyle: bodyStyle.copyWith(color: baseGrayColor),
    labelStyle: bodyStyle,
  ),
  iconTheme: const IconThemeData(color: brandYellowColor),
);