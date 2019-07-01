import 'package:flutter/material.dart';
import 'package:flutter_masters/helper.dart';

class TablePage extends StatelessWidget {
  Map<String, String> _helloTable = {
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

  TableRow _buildRow(String a, String b) {
    return TableRow(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: Text("\u{1F1E6}\u{1F1FF}"),
        height: 100.0,
        color: Helper.generateRandomColor(),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        child: Text("Element 2"),
        height: 150.0,
        color: Helper.generateRandomColor(),
      ),
    ]);
  }

  List<TableRow> _buildRows() {
    List<TableRow> rows = [];
    _helloTable.forEach((String k, String v) => print("\(k) : \(v)"));
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column"),
      ),
      body: Table(
        children: _buildRows(),
      ),
    );
  }
}
