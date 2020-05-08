import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:tutorial_1/unit.dart';

class ConverterRoute extends StatelessWidget {
  final List<Unit> units;
  final Color color;

  const ConverterRoute({
    @required this.units,
    @required this.color,
  }) : assert(units != null),
  assert(color != null);

  @override
  Widget build(BuildContext context) {
    final unitWidgets = units.map((Unit unit) {
      return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        color: color,
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}