import 'package:flutter/material.dart';
import 'package:travel_app_ui/app_bar_section.dart';
import 'package:travel_app_ui/mid_toursection.dart';

class Homepage extends StatelessWidget {
  final List<String> images = [
    "Assets/beach.jpg",
    'Assets/desert.jpeg',
    'Assets/forest.jpg',
    'Assets/Mountain.jpg',
    'Assets/ocean.jpeg',
    'Assets/snow.jpeg',
  ];

  final List<String> title = [
    "Beach",
    'Desert',
    'Forest',
    'Mountain',
    'Ocean',
    'Snow',
  ];

  final List Location = [
    "Goa, India",
    'Sahara, Africa',
    'Amazon, Brazil',
    'Himalaya, Nepal',
    'Australia',
    'Antartica',
  ];

  final List description = [
    "Goa is a state in western India with coastlines stretching along the Arabian Sea. Its long history as a Portuguese colony prior to 1961 is evident in its preserved 16th-century churches and the area’s tropical spice plantations.",
    'The Sahara is a desert located on the African continent. It is the largest hot desert in the world, and the third largest desert overall after Antarctica and the Arctic.',
    'The Amazon rainforest, covering much of northwestern Brazil and extending into Colombia, Peru and other South American countries, is the world’s largest tropical rainforest, famed for its biodiversity.',
    'The Himalayas, or Himalaya, form a mountain range in Asia, separating the plains of the Indian subcontinent from the Tibetan Plateau. The range has many of Earth’s highest peaks, including the highest, Mount Everest.',
    'Australia, officially the Commonwealth of Australia, is a sovereign country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands.',
    'Antarctica is Earth’s southernmost continent. It contains the geographic South Pole and is situated in the Antarctic region of the Southern Hemisphere, almost entirely south of the Antarctic Circle.',
  ];

  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSection(),
      body: ListView(
        padding: EdgeInsets.only(left: 20, top: 20),
        children: [
          Text(
            "Your daily",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
          Text(
            "Recomendetion",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 10),

          midToursection(images: images, title: title),
          SizedBox(height: 20),

          SizedBox(
            height: 20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: title.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 10),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade800,
                  ),
                  child: Text(
                    title[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
