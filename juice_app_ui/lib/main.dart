import 'package:flutter/material.dart';

void main() {
  runApp(JuiceAppUi());
}

class JuiceAppUi extends StatelessWidget {
  const JuiceAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                SizedBox(height: size.height * 0.05),
                Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.menu, size: 28, color: Colors.white),
                ),
                SizedBox(height: size.height * 0.05),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "JUICE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),

                      //
                      Icon(
                        Icons.grid_goldenratio_sharp,
                        size: 80,
                        color: Colors.white,
                      ),
                      SizedBox(height: 30),

                      Text(
                        "Berry Juice",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: size.height * 0.3),
                      Text(
                        "blend of berry with ice that make your tired day feels very fresh again.",

                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),

                      Text(
                        "40/- (Glass)",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),

                      SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 10,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Explore More",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
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
