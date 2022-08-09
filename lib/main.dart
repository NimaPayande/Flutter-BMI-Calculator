import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
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
          bottomSheetTheme:
              const BottomSheetThemeData(backgroundColor: kblueColor),
          bottomNavigationBarTheme:
              const BottomNavigationBarThemeData(backgroundColor: kblueColor),
          iconTheme: const IconThemeData(size: 90),
          useMaterial3: true),
      home: const InputPage(),
    );
  }
}
