import 'package:flutter/material.dart';
import 'package:travel_app_ui/onbording.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(travleAppUi());
}

// ignore: camel_case_types
class travleAppUi extends StatelessWidget {
  const travleAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onbording(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.robotoCondensedTextTheme()),
    );
  }
}
