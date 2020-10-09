import 'package:flutter/material.dart';
import 'package:flutter_sample_app/widgets/travel_listing.dart';

class TravelListings extends StatelessWidget {

  final _travelListings = [
    {
      'title': 'Nashville, TN',
      'image': 'assets/nashville.jpg',
      'description': 'Fun night-life, city skyline, metro, ferris wheels, and more!'
    },
    {
      'title': 'Miami, FL',
      'image': 'assets/miami.jpg',
      'description': 'Fun night-life, city skyline, metro, ferris wheels, and more!'
    },
    {
      'title': 'New York, NY',
      'image': 'assets/nyc.jpg',
      'description': 'Fun night-life, city skyline, metro, ferris wheels, and more!'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _travelListings.map((entry) => TravelListing(
            title: Text(
              entry['title'],
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            color: Colors.black,
            description: Text(entry['description']),
            imageUrl: entry['image'],
          )).toList()
        )
    );
  }
}