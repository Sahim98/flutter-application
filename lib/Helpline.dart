import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:flutter_sms/flutter_sms.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> recipients = [
  '16121',
  '999',
  '999',
  '999',
  '100',
  '101',
  '102',
  '789',
  '16263',
  '1090',
  '16430',
];

List name = [
  'Jatio Bhokta Odhikar',
  'Police',
  'Fire Service',
  'Ambulance Service',
  'Bangladesh Police Helpdesk',
  'RAB Helpdesk',
  'Fire Service Hotline',
  'GrameenPhone Doctor',
  'Govt. Health Call Centre',
  'Disaster Warning In Advance',
  'National Legal Aid Services',
];

class Helpline extends StatelessWidget {
  Helpline({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => new Scaffold(
      appBar: new AppBar(
        title: const Text("Call now"),
        leading: Icon(Icons.call),
        backgroundColor: Colors.purple[300],
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
          iconColor: Colors.purple,
          title: Text(
            name[index],
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(recipients[index]),
          leading: Icon(Icons.account_circle_rounded, color: Colors.purple),
          trailing: Icon(
            Icons.call,
            color: Colors.purple,
          ),
          onTap: () => launch('tel:${recipients[index]}'),
        ),
      ),
    );
  }
}
