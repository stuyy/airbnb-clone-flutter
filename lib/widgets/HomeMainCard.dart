import 'package:flutter/material.dart';
import 'package:flutter_sample_app/widgets/HomeMainCardScreen.dart';

class HomeMainCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Hero(
      tag: 'main_card',
      child: Material(
        child: InkWell(
          onTap: () {
            print("Hello");
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => HomeMainCardScreen()
            ));
          },
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                    margin: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/switzerland.jpg"),
                          fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.65),
                            blurRadius: 10,
                            offset: Offset(0, 3.5),
                          )
                        ]
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 40,
                    child: Text(
                      'Travel Anywhere',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}