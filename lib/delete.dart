import 'package:flutter/material.dart';

class Dele extends StatefulWidget {
  const Dele({Key? key}) : super(key: key);

  @override
  State<Dele> createState() => _DeleState();
}

class _DeleState extends State<Dele> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Choking'),
        //backgroundColor: Colors.blue,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [Card()],
          )),
    );
  }
}
