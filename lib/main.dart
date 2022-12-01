import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'UI',
    home: FavouriteCity(),
  ));
}

class FavouriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouriteCity();
  }
}

class _FavouriteCity extends State<FavouriteCity> {
  String nameCity = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stateful widget'),
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(children: <Widget>[
          TextField(
            onSubmitted: (String userinput) {
              setState(() {
                nameCity = userinput;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              nameCity,
              style: TextStyle(fontSize: 30.00),
            ),
          ),
        ]),
      ),
    );
  }
}
