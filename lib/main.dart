import 'package:flutter/material.dart';
import 'pages/second_page.dart';
import 'pages/add_info_page.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.lightBlueAccent,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          splashColor: Colors.blueGrey,
          textTheme: ButtonTextTheme.normal,
        ),
      ),
      home: MyHomePage(title: 'Flutter Masters'),
      routes: {
        '/second': (BuildContext context) => SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _testResult;
  List<String> _textList = [];
  Color _background = Colors.white70;

  @override
  void initState() {
    super.initState();
  }

  void pushAddPage() async {
    _testResult = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (context) => AddInfoPage(),
      ),
    );

    if (_testResult != null && _testResult.isNotEmpty) {
      _textList.add(_testResult);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("Add text"),
              onTap: pushAddPage,
            ),
            Divider(),
            ListTile(
              title: Text("View text list"),
              onTap: () {
                Navigator.pushNamed(context, "/second", arguments: _textList);
              },
            ),
            Divider(),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _testResult ?? "",
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    _background = Color(
                            (math.Random().nextDouble() * 0xFFFFFF).toInt() <<
                                0)
                        .withOpacity(0.8);
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width - 20,
                height: 200.0,
                decoration: BoxDecoration(color: _background),
                child: Center(
                  child: Text(
                    "tap to change background color",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: pushAddPage,
        tooltip: 'Add Text',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
