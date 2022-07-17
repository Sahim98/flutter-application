import 'package:flutter/material.dart';

class HeadInjury extends StatefulWidget {
  const HeadInjury({Key? key}) : super(key: key);

  @override
  State<HeadInjury> createState() => _HeadInjuryState();
}

class _HeadInjuryState extends State<HeadInjury> {
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
        title: Text('Head Injury'),
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
