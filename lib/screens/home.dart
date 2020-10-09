import 'package:flutter/material.dart';
import 'package:flutter_sample_app/app_bar.dart';
import 'package:flutter_sample_app/widgets/HomeMainCard.dart';
import 'package:flutter_sample_app/widgets/travel_listings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar(context),
      body: ListView(
        children: [
          HomeMainCard(),
          TravelListings(),
          Container(
            color: Colors.black.withOpacity(0.90),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 25,
                    right: 25,
                    bottom: 2.5,
                  ),
                  child: Text(
                    'Best Experience Yet',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 25,
                    left: 25,
                    right: 25,
                  ),
                  child: Text(
                    'Travel anywhere you want and never have to worry about finding a place to stay!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 225,
                            height: 225,
                            margin: EdgeInsets.only(
                              left: 25,
                              right: 25,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              )
                            ),
                          ),
                          Container(
                            width: 225,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)
                              )
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 225,
                            height: 225,
                            margin: EdgeInsets.only(
                              left: 25,
                              right: 25,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )
                            ),
                          ),
                          Container(
                            width: 225,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)
                                )
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 225,
                            height: 225,
                            margin: EdgeInsets.only(
                              left: 25,
                              right: 25,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )
                            ),
                          ),
                          Container(
                            width: 225,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)
                                )
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}