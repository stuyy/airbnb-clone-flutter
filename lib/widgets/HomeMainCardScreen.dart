import 'package:flutter/material.dart';

class HomeMainCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final contextWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Material(
        child: Hero(
          tag: 'main_card',
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      height: MediaQuery.of(context).size.height * .35,
                      width: contextWidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/switzerland.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Container(
                      height: 500,
                      width: contextWidth,
                      color: Colors.red,
                    )
                  ]
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}