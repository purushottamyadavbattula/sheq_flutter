import 'package:flutter/material.dart';
import 'package:sheq_flutter/constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 35, color: kEggplant,),
        SizedBox(height: 8.0,),
        Text(label, style: TextStyle(color: kEggplant, fontWeight: FontWeight.bold), )
      ],
    );
  }
}