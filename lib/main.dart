import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/bmi_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
          textTheme: TextTheme(
              bodyLarge: GoogleFonts.poppins(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
              bodyMedium: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              bodySmall: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              labelSmall: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white54,
                  fontWeight: FontWeight.w500)),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
          bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: kblueColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          bottomNavigationBarTheme:
              const BottomNavigationBarThemeData(backgroundColor: kblueColor),
          iconTheme: const IconThemeData(size: 90, color: Colors.white),
          useMaterial3: true),
      home: const BmiPage(),
    );
  }
}
