import 'package:electricity_bil/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(electricBill());
}

// ignore: camel_case_types
class electricBill extends StatelessWidget {
  const electricBill({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
