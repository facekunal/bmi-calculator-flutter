import 'package:flutter/material.dart';

class OverlayCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  OverlayCard({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}