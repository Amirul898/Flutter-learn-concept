import 'package:electricity_bil/author.dart';
import 'package:electricity_bil/button.dart';
import 'package:electricity_bil/head_section.dart';
import 'package:electricity_bil/input_fild.dart';
import 'package:electricity_bil/issue.dart';
import 'package:electricity_bil/total_bill.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double unit = 0.0;
  double rate = 0.0;
  double totalBill = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20),
          headSection(),
          SizedBox(height: 50),
          CustomInputField(
            hintText: "Unit",
            labelText: 'Enter Unit',
            onChanged: (String value) {
              unit = double.parse(value);
              setState(() {});
            },
          ),
          SizedBox(height: 20),
          CustomInputField(
            hintText: "Rate",
            labelText: 'Enter Rate',
            onChanged: (String value) {
              rate = double.parse(value);
              setState(() {});
            },
          ),
          SizedBox(height: 20),
          Button(),
          SizedBox(height: 50),
          TotalBill(totalBill: rate * unit),
          SizedBox(height: 50),
          Author(),
          SizedBox(height: 10),
          Issue(),
        ],
      ),
    );
  }
}
