import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/AcidAttack.dart';
import 'package:flutter_application_1/Burning.dart';
import 'package:flutter_application_1/Choking.dart';
import 'package:flutter_application_1/Favourite.dart';
import 'package:flutter_application_1/HeadInjury.dart';
import 'package:flutter_application_1/Helpline.dart';
import 'package:flutter_application_1/Map.dart';
import 'package:flutter_application_1/Stroke.dart';
import 'package:flutter_application_1/drawer.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'Home.dart';
import 'Profile.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int curr = 0;
  List ls = [Home(), map(), Profile(), Helpline(), Favourite()];
  void onPageChanged(int page) {
    setState(() {
      curr = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 50,
          // fixedColor: Colors.orange,
          backgroundColor: Colors.blue,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 20,
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,

          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Colors.teal,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on,
              ),
              label: 'Map',
              backgroundColor: Colors.lime,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
              backgroundColor: Colors.redAccent,
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.purple[300],
                icon: Icon(Icons.call),
                label: 'HelpLine'),
            BottomNavigationBarItem(
                backgroundColor: Colors.teal,
                icon: Icon(Icons.add_call),
                label: 'Favourite'),
          ],
          currentIndex: curr,
          onTap: (index) {
            onPageChanged(index);
          },
        ),
        body: ls[curr],
      ),
    );
  }
}
