import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:flutter_sms/flutter_sms.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> recipients = [
  '01786370850',
  '01518318801',
  '01786371050',
  '01786374100',
  '01786370660',
];

List name = ['Fahim', 'Rajib', 'Sakib', 'Rafi', 'Sumon'];

String message = "I'm in danger!! Help me!!!";

void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}

class Favourite extends StatelessWidget {
  Favourite({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => new Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        onPressed: () {
          _sendSMS(message, recipients);
        },
        child: Icon(Icons.message_outlined),
      ),
      appBar: new AppBar(
        title: const Text("Call now"),
        leading: Icon(Icons.call),
        backgroundColor: Colors.green[300],
      ),
      body: ListView.builder(itemBuilder: itemBuilder, itemCount: name.length));

  Widget itemBuilder(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.green.shade300,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListTile(
          dense: true,
          iconColor: Colors.green,
          title: Text(
            name[index],
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text("Call now"),
          trailing: Icon(
            Icons.call,
          ),
          onTap: () => launch('tel:+88${recipients[index]}'),
        ),
      ),
    );
  }
}
