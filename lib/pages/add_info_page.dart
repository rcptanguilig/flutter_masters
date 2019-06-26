import 'package:flutter/material.dart';

class AddInfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddInfoPageState();
  }
}

class _AddInfoPageState extends State<AddInfoPage> {
  final TextEditingController _inputTextController = TextEditingController();
  String _entryString;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: 'enter text here, then hit enter',
                ),
                textAlign: TextAlign.center,
                controller: _inputTextController,
                onSubmitted: (String value) {
                  setState(
                    () {
                      _entryString = value;
                    },
                  );
                },
              ),
              SizedBox(height: 10.0),
              Text(
                _entryString ?? "",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 40.0),
              RaisedButton(
                child: Text("Add and Return to Home"),
                onPressed: () => Navigator.pop(context, _entryString),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
