// ignore: file_names
import 'package:flutter/material.dart';
import 'package:juice_app_ui/singe_juce.dart';

// ignore: must_be_immutable
class Juicetwo extends StatelessWidget {
  final imglist = [
    "assets/photo/berries.jpg",
    "assets/photo/oranges.jpeg",
    "assets/photo/starw.jpeg",
    "assets/photo/grapes.jpg",
    "assets/photo/berry.webp",
  ];

  final juiceName = ["Berries", "Oranges", "StarwBery", "Grapes", "Berry"];

  final price = [
    "30/- (per Glass)",
    "60/- (per Glass)",
    "40/- (per Glass)",
    "80/- (per Glass)",
    "120/- (per Glass)",
  ];

  String desc =
      "mixed with chilled ice and griended with sponzita, picked with sot'l hands in sumine";

  final location = ["Dhaka", "Chittagong", "Khulna", "Rajshahi", "Sylhet"];
  Juicetwo({super.key});

  @override
  Widget build(BuildContext context) {
    var size2 = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/photo/mixed.jpeg",
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
                      SizedBox(
                        height: 500,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: imglist.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => Singejuce(
                                          Data: {
                                            "BackGroundImage": imglist[index],
                                            "JuiceName": juiceName[index],
                                            "Price": price[index],
                                            "Description": desc,
                                            "Location": location[index],
                                          },
                                        ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(imglist[index]),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      juiceName[index],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      price[index],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
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
