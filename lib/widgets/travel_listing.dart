import 'package:flutter/material.dart';

class TravelListing extends StatelessWidget {

  final Text title;
  final String imageUrl;
  final Text description;
  final Color color;

  TravelListing({ Key key, this.title, this.imageUrl, this.description, this.color });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        top: 25,
        bottom: 50,
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 275,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25)
              ),
              image: DecorationImage(
                image: AssetImage(
                    this.imageUrl
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 100,
            width: 275,
            padding: EdgeInsets.only(
              top: 12.5,
              left: 15,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                this.title,
                Padding(
                  padding: EdgeInsets.only(top: 3.5),
                  child: this.description
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}