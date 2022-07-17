import 'package:flutter/material.dart';

class map extends StatefulWidget {
  const map({Key? key}) : super(key: key);

  @override
  State<map> createState() => _mapState();
}

class _mapState extends State<map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
        backgroundColor: Colors.lime[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Text('Processing...',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.5))),
        ),
      ),
    );
  }
}
