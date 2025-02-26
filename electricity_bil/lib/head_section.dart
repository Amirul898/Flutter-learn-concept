import 'package:flutter/material.dart';

// ignore: camel_case_types
class headSection extends StatelessWidget {
  const headSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.offline_bolt, color: Colors.deepOrange, size: 30),
        Text(
          'Electricity Bill',
          style: TextStyle(
            fontSize: 22,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
