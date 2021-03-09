import 'package:flutter/material.dart';
import 'package:solid_software_test/constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.title, @required this.onTap});

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kBottonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 20.0),
        width: double.infinity,
        height: kBottomContainerHeigth,
      ),
    );
  }
}
