import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class fireDataInsert extends StatefulWidget {
  const fireDataInsert({super.key, required String title});

  @override
  State<fireDataInsert> createState() => _fireDataInsertState();
}

// ignore: camel_case_types
class _fireDataInsertState extends State<fireDataInsert> {
  // ignore: non_constant_identifier_names
  InsertData(value) async {
    await FirebaseFirestore.instance.collection("Studants").add({
      "name": value,
    });
  }

  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                name = value;
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),

                hintText: "Enter Name",
              ),
            ),

            SizedBox(height: 30),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),

                onPressed: () {
                  InsertData(name);
                },
                child: Text(
                  "Insert Data",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
