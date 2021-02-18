import 'package:flutter/material.dart';

class OverlayCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPressed;

  OverlayCard({@required this.color, this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}