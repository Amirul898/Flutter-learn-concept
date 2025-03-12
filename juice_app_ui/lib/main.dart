import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juice_app_ui/juiceTwo.dart';

void main() {
  runApp(JuiceAppUi());
}

class JuiceAppUi extends StatelessWidget {
  const JuiceAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Juicetwo(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.gabaritoTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
