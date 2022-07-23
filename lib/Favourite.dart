import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:flutter_sms/flutter_sms.dart';
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

class notification extends StatelessWidget {
  notification({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => new Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        elevation: 20,
        onPressed: () {
          _sendSMS(message, recipients);
        },
        child: Icon(Icons.message_outlined),
      ),
      appBar: new AppBar(
        title: const Text("Call now"),
        leading: Icon(Icons.call),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(itemBuilder: itemBuilder, itemCount: name.length));

  Widget itemBuilder(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey[800],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListTile(
          dense: true,
          iconColor: Colors.teal,
          title: Text(
            name[index],
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text("Call now"),
          leading: Icon(Icons.account_circle_rounded, color: Colors.teal),
          trailing: Icon(
            Icons.call,
            color: Colors.teal,
          ),
          onTap: () => launch('tel:+88${recipients[index]}'),
        ),
      ),
    );
  }
}
