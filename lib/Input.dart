import 'package:flutter/material.dart';
import 'Favourite.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final _controller = TextEditingController();
  final _controller1 = TextEditingController();
  GlobalKey fst = GlobalKey<FormState>();
  String? _error;

  @override
  Widget build(BuildContext context) {
    bool showPass = false;
    void setval() {
      setState(() {
        showPass = !showPass;
      });
    }

    void _setText() {
      setState(() {
        if(_controller.text.length!=11){
          _error = 'Please enter a valid phone number';
        }
        else{
          _error = null;
        }
        name.add(_controller1.text);
        recipients.add(_controller.text);
        _controller.clear();
        _controller1.clear();
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
        backgroundColor: Colors.purple[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 211, 208, 208),
                ),
                controller: _controller1,
                keyboardType: TextInputType.text,
                maxLength: 40,
                autocorrect: true,
                cursorColor: Colors.purple,
                cursorWidth: 3,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: fst,
                child: TextField(
                  decoration: 
                  InputDecoration(
                      errorText: _error,
                      labelText: 'Phone Number',
                      hintText: 'Enter a  number of 11 digits',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 211, 208, 208),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: null,
                      )),
                  controller: _controller,
                  keyboardType: TextInputType.text,
                  maxLength: 11,
                  obscureText: showPass,
                  cursorColor: Colors.purple,
                  cursorWidth: 3,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: _setText,
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(7),
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: const Text('Submit')
                ),
          ],
        ),
      ),
    );
  }
}
