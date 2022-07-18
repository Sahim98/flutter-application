import 'package:flutter/material.dart';

class Adult extends StatefulWidget {
  const Adult({Key? key}) : super(key: key);

  @override
  State<Adult> createState() => _AdultState();
}

class _AdultState extends State<Adult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Adult/Child'),
          //backgroundColor: Colors.blue,
        ),
        body: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                    scrollDirection: Axis.vertical, 
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                      children: [
                        Text(
                          '1.  Ask the casuality, Are you Choking?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '2. Encourage the casuality to cough.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                            )),
              ),
            ],
          ),
        ));
  }
}
