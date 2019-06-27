import 'package:flutter/material.dart';
import 'package:flutter_masters/helper.dart';

class ListViewPage extends StatelessWidget {
  Widget _buildListItem() {
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
    final List<String> _helloList = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text("ListView builder"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.chat),
                  backgroundColor: Helper.generateRandomColor(),
                ),
                title: Text(
                  _helloList[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
              ),
              elevation: 1.5,
              margin: EdgeInsets.all(4.0),
              color: Helper.generateRandomColor().withAlpha(20),
              
            );
          },
          itemCount: _helloList.length,
        ));
  }
}
