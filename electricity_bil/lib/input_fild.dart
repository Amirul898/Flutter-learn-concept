import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
inputFild(Labeltext, HintTExt) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
      decoration: InputDecoration(
        labelText: Labeltext,
        hintText: HintTExt,
        border: OutlineInputBorder(),
      ),
    ),
  );
}
