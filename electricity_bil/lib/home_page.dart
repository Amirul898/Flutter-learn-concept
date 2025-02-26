import 'package:electricity_bil/button.dart';
import 'package:electricity_bil/head_section.dart';
import 'package:electricity_bil/input_fild.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20),
          headSection(),
          SizedBox(height: 20),
          inputFild("Unit", "Enter Unit"),
          SizedBox(height: 20),
          inputFild("Price", "Enter Price"),
          SizedBox(height: 20),
          Button(),
        ],
      ),
    );
  }
}
