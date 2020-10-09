import 'package:flutter/material.dart';

class SavedScreen extends StatefulWidget {

  @override
  _SavedScreenState createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    final contextWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(top: 15),
            sliver: SliverAppBar(
                pinned: true,
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: RaisedButton(
                    onPressed: () {

                    },
                    child: Text('Search Favorites'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                )
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: MediaQuery.of(context).size.height * .35,
                  width: contextWidth,
                  margin: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/switzerland.jpg"),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 3.5),
                        spreadRadius: 3.5,
                        blurRadius: 10
                      )
                    ]
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
    );
  }
}