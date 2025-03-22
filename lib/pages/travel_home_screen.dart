import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:travel_apps/pages/place_detail.dart';
import 'package:travel_apps/style/color.dart';
import 'package:travel_apps/widgets/popular_place.dart';
import 'package:travel_apps/widgets/recomendate.dart';

import '../models/travel_model.dart';

class TravelHomeScreen extends StatefulWidget {
  const TravelHomeScreen({super.key});

  @override
  State<TravelHomeScreen> createState() => _TravelHomeScreenState();
}

class _TravelHomeScreenState extends State<TravelHomeScreen> {
  int selectedPage = 0;
  List<IconData> icons = [
    Iconsax.home,
    Iconsax.search_normal,
    Icons.confirmation_number_outlined,
    Icons.bookmark_outline,
    Icons.person_outline,
  ];

  // Filter for popular and recommended destinations
  List<TravelDestination> popular =
      myDestination.where((element) => element.category == "popular").toList();
  List<TravelDestination> recomendate =
      myDestination.where((element) => element.category == "recomend").toList();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: headerParts(),
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.02), // Proportional spacing
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular place",
                  style: TextStyle(
                    fontSize: screenWidth * 0.05, // Scalable font size
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04, // Scalable font size
                    color: blueTextColor,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.015), // Proportional spacing
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
                bottom: screenHeight * 0.05), // Scalable padding
            child: Row(
              children: List.generate(
                popular.length,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PlaceDetailScreen(
                            destination: popular[index],
                          ),
                        ),
                      );
                    },
                    child: PopularPlace(
                      destination: popular[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recomendation for you",
                  style: TextStyle(
                    fontSize: screenWidth * 0.05, // Scalable font size
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04, // Scalable font size
                    color: blueTextColor,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.02), // Proportional spacing
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: Column(
                children: List.generate(
                  recomendate.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PlaceDetailScreen(
                              destination: recomendate[index],
                            ),
                          ),
                        );
                      },
                      child: Recomendate(
                        destination: recomendate[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar headerParts() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leadingWidth: 180,
      leading: const Row(
        children: [
          SizedBox(width: 15),
          Icon(
            Iconsax.location,
            color: Colors.black,
          ),
          SizedBox(width: 5),
          Text(
            "Bali",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 30,
            color: Colors.black26,
          ),
        ],
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.black12,
            ),
          ),
          padding: const EdgeInsets.all(7),
          child: const Stack(
            children: [
              Icon(
                Iconsax.notification,
                color: Colors.black,
                size: 30,
              ),
              Positioned(
                top: 5,
                right: 5,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}
