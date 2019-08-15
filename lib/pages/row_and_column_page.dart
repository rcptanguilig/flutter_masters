import 'package:flutter_web/material.dart';
import '../helper.dart';

class RowAndColumnPage extends StatelessWidget {
  Widget _buildRows() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Element 1"),
          height: 100.0,
          color: Helper.generateRandomColor(),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Element 2"),
          height: 150.0,
          color: Helper.generateRandomColor(),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Element 3"),
          height: 200.0,
          color: Helper.generateRandomColor(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildRows(),
          Divider(),
          _buildRows(),
          Divider(),
          _buildRows(),
          Divider(),
        ],
      ),
    );
  }
}
