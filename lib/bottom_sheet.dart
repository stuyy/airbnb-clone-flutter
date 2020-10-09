import 'package:flutter/material.dart';

Future displayBottomSheet(context) {
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
            padding: EdgeInsets.all(5),
            height: MediaQuery.of(context).size.height * 0.90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)
              ),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Where are you going?',
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(left: 15, top: 8.5),
                    child: Row(
                      children: [
                        Icon(Icons.map),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Explore nearby destinations'),
                        )
                      ],
                    )
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: ListView(
                    children: [
                      Card(
                        child: ListTile(
                          title: Text('Albany'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Albany'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
        );
      }
  );
}