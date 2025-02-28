import 'package:flutter/material.dart';



class CustomInputField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final ValueChanged<String> 
  onChanged;

  CustomInputField({
    required this.labelText,
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
