import 'package:flutter/material.dart';
import 'package:flutter_masters/helper.dart';

class TablePage extends StatelessWidget {
  final Map<String, String> _helloTable = {
    "Albanian": "Përshëndetje!",
    "Arabic": "أهلا!",
    "Armenian": "Բարև՜։",
    "Bosnian": "Zdravo!",
    "Catalan": "Hola!",
    "Chinese": "你好！",
    "Croatian": "Zdravo!",
    "Czech": "Ahoj!",
    "Danish": "Goddag!",
    "Dutch": "Hallo!",
    "Estonian": "Tere!",
    "Finnish": "Hei!",
    "French": "Salut!",
    "Georgian": "გამარჯობა!",
    "German": "Hallo!",
    "Greek": "Γειά σου!",
    "Hindi": "नमस्ते!",
    "Hungarian": "Helló!",
    "Icelandic": "Halló!",
    "Indonesian": "Halo!",
    "Italian": "Ciao!",
    "Japanese": "こんにちは！",
    "Khmer (Cambodian)": "សួរស្តី",
    "Korean": "여보세요!",
    "Latvian": "Sveiki!",
    "Macedonian": "Здраво!",
    "Norwegian": "Hei",
    "Persian (Farsi)": "سلام!",
    "Polish": "Cześć!",
    "Portuguese": "Olá!",
    "Romanian": "Bună!",
    "Russian": "Привет!",
    "Serbian": "Здраво!",
    "Slovak": "Ahoj!",
    "Slovenian": "Zdravo!",
    "Spanish": "¡Hola!",
    "Swedish": "Hallå!",
    "Thai": "สวัสดี",
    "Turkish": "Merhaba!",
    "Ukrainian": "Привіт!"
  };

  Widget _buildTextBox(String text) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget _buildHeaderBox(String text) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20.0,
          color: Colors.white70,
        ),
      ),
    );
  }

  List<TableRow> _buildRows(BuildContext context) {
    List<TableRow> rows = [];

    rows.add(
        TableRow(
      children: [
        Container(
          child: _buildHeaderBox("Country"),
          height: 75.0,
          color: Theme.of(context).primaryColorDark,
        ),
        Container(
          child: _buildHeaderBox("Say \"Hello!\""),
          height: 75.0,
          color: Theme.of(context).primaryColorDark,
        ),
      ],
    ));

    _helloTable.forEach(
      (String k, String v) {
        print(k + " : " + v);
        rows.add(
          TableRow(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: _buildTextBox(k),
                height: 50.0,
                color: Helper.generateRandomColor(),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: _buildTextBox(v),
                height: 75.0,
                color: Helper.generateRandomColor(),
              ),
            ],
          ),
        );
      },
    );
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Page"),
      ),
      body: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder.all(
          color: Helper.generateRandomColor(),
          width: 1.5,
        ),
        children: _buildRows(context),
      ),
    );
  }
}
