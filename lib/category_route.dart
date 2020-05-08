import 'package:flutter/material.dart';

import 'package:tutorial_1/category.dart';

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    final listView = Container(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: ListView.builder(
          itemCount: _categoryNames.length,
          itemBuilder: (context, index) {
            return Category(
                name: _categoryNames[index],
                color: _baseColors[index],
                icon: Icons.cake);
          },
        ));

    final appBar = AppBar(
      title: Text('Unit Converter', style: TextStyle(fontSize: 30.0)),
      elevation: 0,
      backgroundColor: Colors.green[100],
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
