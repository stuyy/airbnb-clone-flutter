import 'package:flutter/material.dart';
import 'package:flutter_sample_app/bottom_sheet.dart';

Widget buildAppBar(BuildContext context) {
  return AppBar(
      backgroundColor: Colors.black87,
      title: Container(
        width: MediaQuery.of(context).size.width,
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.search, color: Colors.white),
              Padding(
                child: Text(
                    'Where are you going?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                    )
                ),
                padding: EdgeInsets.only(left: 2),
              )
            ],
          ),
          color: Colors.white10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
            displayBottomSheet(context);
          },
        ),
      )
  );
}