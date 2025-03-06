import 'package:flutter/material.dart';

void main() {
  runApp(JuiceAppUi());
}

class JuiceAppUi extends StatelessWidget {
  const JuiceAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/photo/starw.jpeg",
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ],
      ),
    );
  }
}
