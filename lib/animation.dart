import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:flutter_sms/flutter_sms.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

List<String> recipients = [
  'tel:+8801786370850',
  'tel:+8801518318801',
  'tel:+8801786371050',
  'tel:+8801786374100',
  'tel:+8801786370660',
];

List<String> name = ['Sahim', 'Rajib', 'Sakib', 'Rafi', 'Sumon'];

String message = "I'm in danger!! Help me!!!";

void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final titleController = TextEditingController();
  String text = "No Value Entered", dup = "No Value Entered";

  void _setText() {
    setState(() {
      text = titleController.text;
      if (text != dup) name.add(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeeksforGeeks'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              
              decoration: const InputDecoration(
                labelText: 'Title',
               
              ),
              controller: titleController,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
              onPressed: _setText,
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(8),
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              child: const Text('Submit')),

          // RaisedButton is deprecated and should not be used
          // Use ElevatedButton instead

          // RaisedButton(
          // onPressed: _setText,
          // child: Text('Submit'),
          // elevation: 8,
          // ),
          const SizedBox(
            height: 20,
          ),
          Text(name[name.length - 2]),
        ],
      ),
    );
  }
}
