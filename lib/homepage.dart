import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _fontSize;
  bool _isBold = false;
  bool _isItalic = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton(
                value: _fontSize,
                items: [
                  DropdownMenuItem(
                    child: Text("Small"),
                    value: 20.0,
                  ),
                  DropdownMenuItem(
                    child: Text("Medium"),
                    value: 30.0,
                  ),
                  DropdownMenuItem(child: Text("Large"), value: 40.0),
                  DropdownMenuItem(child: Text("Extra Large"), value: 50.0)
                ],
                onChanged: (value) {
                  setState(() {
                    _fontSize = value;
                  });
                }),
            CheckboxListTile(
                title: Text("Bold"),
                value: _isBold,
                onChanged: (value) {
                  setState(() {
                    _isBold = value;
                  });
                }),
            CheckboxListTile(
                title: Text("Italics"),
                value: _isItalic,
                onChanged: (value) {
                  setState(() {
                    _isItalic = value;
                  });
                }),
            Text(
              'Welcome to the Home Screen',
              style: TextStyle(
                  fontSize: _fontSize,
                  fontWeight: _isBold ? FontWeight.bold : FontWeight.normal,
                  fontStyle: _isItalic ? FontStyle.italic : FontStyle.normal),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
