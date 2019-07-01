import 'package:flutter/material.dart';
import 'package:flutter_masters/helper.dart';

class GridViewPage extends StatelessWidget {

  List<Widget> _helloCardBuilder(List<String> helloList) {
    List<Widget> helloCards = [];
    for (String text in helloList) {
      helloCards.add(
          Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.chat),
                backgroundColor: Helper.generateRandomColor(),
              ),
              title: Text(
                text,
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
            color: Helper.generateRandomColor().withAlpha(40),
          )
      );
    }

    return helloCards;
  }

  @override
  Widget build(BuildContext context) {
    final List<String> _helloList = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("ListView builder"),
      ),
      body: GridView.count (
        padding: EdgeInsets.all(5.0),
        scrollDirection: Axis.horizontal,
        crossAxisSpacing: 10.0,
        crossAxisCount: 4,
        children: _helloCardBuilder(_helloList),
      ),
    );
  }
}
