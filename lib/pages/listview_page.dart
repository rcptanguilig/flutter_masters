import 'package:flutter_web/material.dart';
import '../helper.dart';

class ListViewPage extends StatelessWidget {

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
      ),
    );
  }
}
