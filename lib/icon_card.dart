import 'package:flutter/material.dart';

const iconTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconCard extends StatelessWidget {
  final String text;
  final IconData icon;

  IconCard({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: iconTextStyle,
        ),
      ],
    );
  }
}