import 'package:flutter/material.dart';
import 'package:flutter_application_1/AcidAttack.dart';
import 'package:flutter_application_1/Burning.dart';
import 'package:flutter_application_1/Choking.dart';
import 'package:flutter_application_1/HeadInjury.dart';
import 'package:flutter_application_1/Stroke.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue[300],
      ),
      body: Container(
          child: ListView(
        children: [
          ListTile(
            iconColor: Colors.teal,
            leading: Icon(Icons.medical_services),
            title: Text(
              'Choking',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            //subtitle: Text('Tap to view'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Choking()),
              );
            },
          ),
          ListTile(
            iconColor: Colors.teal,
            leading: Icon(Icons.medical_services),
            title: Text(
              'Acid Attack',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            //subtitle: Text('Tap to view'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AcidAttack()),
              );
            },
          ),
          ListTile(
            iconColor: Colors.teal,
            leading: Icon(Icons.medical_services),
            title: Text(
              'Burning',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            //subtitle: Text('Tap to view'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Burning()),
              );
            },
          ),
          ListTile(
            iconColor: Colors.teal,
            leading: Icon(Icons.medical_services),
            title: Text(
              'Head Injury',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            //subtitle: Text('Tap to view'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HeadInjury()),
              );
            },
          ),
          ListTile(
            iconColor: Colors.teal,
            leading: Icon(Icons.medical_services),
            title: Text(
              'Stroke',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            //subtitle: Text('Tap to view'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Stroke()),
              );
            },
          ),
        ],
      )),
    );
  }
}
