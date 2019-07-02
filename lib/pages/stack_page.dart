import 'package:flutter/material.dart';
import 'package:flutter_masters/helper.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Page"),
      ),
      body: Stack(
        alignment: Alignment(2.0, 6.0),
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "Element 1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            height: 250.0,
            width: 250.0,
            color: Helper.generateRandomColor(),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "Element 2",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            height: 200.0,
            width: 200.0,
            color: Helper.generateRandomColor(),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "Element 3",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            height: 150.0,
            width: 150.0,
            color: Helper.generateRandomColor(),
          ),
        ],
      ),
    );
  }
}
