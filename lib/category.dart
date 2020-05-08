import 'package:flutter/material.dart';

const _height = 100.0;
const _borderRadius = 50.0;

class Category extends StatelessWidget {
  final String name;
  final Color color;
  final IconData icon;

  const Category({this.name, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        height: _height,
        child: InkWell(
          splashColor: color,
          highlightColor: color,
          borderRadius: BorderRadius.circular(_borderRadius),
          onTap: () {
            print('I was tapped!');
          },
          child: Row(children: <Widget>[
            Padding(
                child: Icon(icon, size: 60.0), padding: EdgeInsets.all(16.0)),
            Expanded(child: Text(name, style: TextStyle(fontSize: 24.0)))
          ]),
        ));
  }
}
