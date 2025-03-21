import 'package:flutter/material.dart';
import 'package:travel_apps/pages/onboard_travel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TravelOnBoardingScreen(),
    );
  }
}
