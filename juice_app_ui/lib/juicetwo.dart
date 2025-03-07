// ignore: file_names
import 'package:flutter/material.dart';

class Juicetwo extends StatelessWidget {
  const Juicetwo({super.key});

  @override
  Widget build(BuildContext context) {
    var ImgeList = ["assets/photo/berries.jpg"];
    var size2 = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/photo/berries.jpg",
              color: Colors.black54,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                SizedBox(height: size2.height * 0.05),
                Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.menu, size: 28, color: Colors.white),
                ),

                Center(
                  child: Column(
                    children: [
                      SizedBox(height: size2.height * 0.05),
                      Text(
                        "Healthy outside\nstart\nfrom inside",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      SizedBox(height: size2.height * 0.05),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "we provide a variety \n of juices with \n various flavours",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Some Varients :",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: size2.height * 0.05),

                      ListView.builder(
                        //   itemCount: ImgeList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 200,
                            height: 250,
                            color: Colors.redAccent,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
