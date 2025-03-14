// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Singejuce extends StatelessWidget {
  final Map<String, dynamic> Data;
  const Singejuce({super.key, required this.Data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Hero(
              tag: Data["BackGroundImage"],
              child: Image.asset(
                Data["BackGroundImage"],
                color: Colors.black54,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ),

          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.local_fire_department,
                  color: Colors.white,
                  size: 120,
                ),
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        // spreadRadius: 5,
                        offset: Offset(0, 7),
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Data["BackGroundImage"]),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 40),

              Text(
                Data["JuiceName"],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              Text(
                Data["Description"],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 20),

              Text(
                Data["Location"],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              Text(
                Data["Price"],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30),
              SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
