import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    title: 'UI',
    home: FavouriteCity(),
    debugShowCheckedModeBanner: false,
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
  var _currency = ['Naira', 'DOllar', 'Euros'];
  var _currentItemSelected = 'Naira';
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
          DropdownButton(
            items: _currency.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (newSelectedValue) {
              setState(() {
                _currentItemSelected = newSelectedValue!;
              });
            },
            value: _currentItemSelected,
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
