import 'package:electricity_bil/button.dart';
import 'package:electricity_bil/head_section.dart';
import 'package:electricity_bil/input_fild.dart';
import 'package:electricity_bil/total_bill.dart';
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
          SizedBox(height: 50),
          inputFild("Unit", "Enter Unit"),
          SizedBox(height: 20),
          inputFild("Price", "Enter Price"),
          SizedBox(height: 20),
          Button(),
          SizedBox(height: 50),
          TotalBill(),
          SizedBox(height: 80),
          Author(),
        ],
      ),
    );
  }
}

class Author extends StatelessWidget {
  const Author({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Developed by: "),
          Text(
            "Md. Amirul Islam",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
