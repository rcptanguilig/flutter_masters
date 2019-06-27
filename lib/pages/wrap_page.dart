import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WrapPageState();
  }
}

class _WrapPageState extends State<WrapPage> {
  final TextEditingController _inputTextController = TextEditingController();
//  String _entryString;

  List<String> _textList = [];

  List<Widget> _textBoxesBuilder() {
    List<Widget> textBoxes = [];
    for (String text in _textList) {
      textBoxes.add(
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
          margin: EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            border: Border.all(
              color: Colors.blueGrey,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
    return textBoxes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Page"),
      ),
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
//                      _entryString = value;
                      _textList.add(value);
                    },
                  );
                },
              ),
              SizedBox(height: 10.0),
              Container(
                child: _textList == null ? Text("Enter a text") : Wrap(
                  children: _textBoxesBuilder(),
                ),
              ),
              SizedBox(height: 40.0),
//              RaisedButton(
//                child: Text("Add and Return to Home"),
//                onPressed: () => Navigator.pop(context),
//              ),
            ],
          ),
        ),
      ),
    );
  }
}
