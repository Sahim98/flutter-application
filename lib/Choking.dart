import 'package:flutter/material.dart';
import 'package:flutter_application_1/Adult.dart';

class Choking extends StatefulWidget {
  const Choking({Key? key}) : super(key: key);

  @override
  State<Choking> createState() => _ChokingState();
}

class _ChokingState extends State<Choking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.grey,
          backgroundColor: Colors.black,
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
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Center(
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Adult/Child',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Adult()),
                          );
                        },
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
              // style: TextButton.styleFrom(
              //     alignment: Alignment.center, padding: EdgeInsets.all(100)),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Center(
                  child: Container(
                    height: 100,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Infant',
                          style: TextStyle(fontSize: 25),
                        ),
                        onTap: () {},
                        // style: ListTileStyle(),
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
