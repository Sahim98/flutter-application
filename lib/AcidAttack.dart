import 'package:flutter/material.dart';

class AcidAttack extends StatefulWidget {
  const AcidAttack({Key? key}) : super(key: key);

  @override
  State<AcidAttack> createState() => _AcidAttackState();
}

class _AcidAttackState extends State<AcidAttack> {
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
        title: Text('Acid Attack'),
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
