import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.symmetric(vertical: 40.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: color,
        ),
      ),
    );
  }
}
