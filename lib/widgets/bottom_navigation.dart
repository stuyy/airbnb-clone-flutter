import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {

  final Function updateCurrentScreen;

  CustomBottomNavigationBar({ Key key, this.updateCurrentScreen }): super(key: key);
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<CustomBottomNavigationBar> {

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
      return BottomNavigationBar(
        backgroundColor: Colors.white10,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            widget.updateCurrentScreen(index);
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Saved')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.details),
              title: Text('Details')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text('Profile')
          ),
        ],
      );
    }
}