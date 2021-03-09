import 'package:flutter/material.dart';
import 'package:solid_software_test/screens/bonus_page.dart';
import 'package:solid_software_test/services/color_generator.dart';
import 'package:solid_software_test/constants.dart';
import 'package:solid_software_test/components/buttom_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UniqueColorGenerator uniqueColorGenerator = UniqueColorGenerator();
  Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            setState(() {
              backgroundColor = uniqueColorGenerator.getColor();
            });
          },
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    'Hey there',
                    style: kTextStyle,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ButtomButton(
                  title: 'BONUS PAGE',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BonusPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
