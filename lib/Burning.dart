import 'package:flutter/material.dart';

class Burning extends StatefulWidget {
  const Burning({Key? key}) : super(key: key);

  @override
  State<Burning> createState() => _BurningState();
}

class _BurningState extends State<Burning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Burning'),
        //backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Text('Processing...',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.4))),
        ),
      ),
    );
  }
}
