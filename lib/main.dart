import 'package:flutter/material.dart';
import 'package:flutter_sample_app/screens/home.dart';
import 'package:flutter_sample_app/screens/saved.dart';
import 'package:flutter_sample_app/widgets/bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.transparent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Widget> _screens = [
    HomeScreen(),
    SavedScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  int _currentIndex = 1;
  updatePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _screens.elementAt(_currentIndex),
      bottomNavigationBar: CustomBottomNavigationBar(updateCurrentScreen: updatePage),
    );
  }
}