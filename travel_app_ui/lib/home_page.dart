// ignore_for_file: non_constant_identifier_names
// ignore: duplicate_ignore
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:travel_app_ui/app_bar_section.dart';
import 'package:travel_app_ui/detail_page.dart';
import 'package:travel_app_ui/mid_toursection.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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

  late String titlechoce;

  @override
  void initState() {
    super.initState();
    titlechoce = title[0];
  }

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
          catagoryList(),
          SizedBox(height: 20),
          ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailPage(
                            Data: {
                              'images': images[index],
                              "title": title[index],
                              "Location": Location[index],
                              "description": description[index],
                            },
                          );
                        },
                      ),
                    );
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 30,
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 70,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.map_outlined),
                                      SizedBox(width: 5),
                                      Text(Location[index]),
                                    ],
                                  ),
                                  SizedBox(height: 5),

                                  Text(
                                    description[index],
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  SizedBox catagoryList() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: title.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  titlechoce = title[index];
                });
              },
              child: Text(
                title[index],
                style: TextStyle(
                  fontSize: titlechoce == title[index] ? 18 : 16,
                  color:
                      titlechoce == title[index]
                          ? Colors.black
                          : Colors.black54,
                  fontWeight:
                      titlechoce == title[index]
                          ? FontWeight.bold
                          : FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
