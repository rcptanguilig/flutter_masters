import 'package:flutter_web/material.dart';
import '../helper.dart';

class IndexedStackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IndexedStackPageState();
  }
}

class _IndexedStackPageState extends State<IndexedStackPage> {
  int focus = 0;

  void changeFocusElement() {
    focus++;
    focus = focus < 3 ? focus : 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indexed Stack Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("Change focus"),
            onPressed: () {
              setState(() {
                changeFocusElement();
              });
            },
          ),
          IndexedStack(
            alignment: Alignment(2.0, 6.0),
            index: focus,
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
        ],
      ),
    );
  }
}
