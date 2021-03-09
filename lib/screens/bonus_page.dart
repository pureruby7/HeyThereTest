import 'package:flutter/material.dart';
import 'package:solid_software_test/components/buttom_button.dart';
import 'package:solid_software_test/components/reusable_card.dart';
import 'package:solid_software_test/constants.dart';
import 'package:solid_software_test/services/color_generator.dart';

enum ColorRGB { red, green, blue }

class BonusPage extends StatefulWidget {
  @override
  _BonusPageState createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
  ColorRGB selectedColor;
  UniqueColorGenerator uniqueColorGenerator = UniqueColorGenerator();
  Color randomFromChannelColor = Colors.white;
  Icon boxState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '1. Tap on a base color:',
                  style: kTextStyle,
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: selectedColor == ColorRGB.blue
                          ? kActibeBoxIcom
                          : null,
                      onPress: () {
                        setState(() {
                          selectedColor = ColorRGB.blue;
                          randomFromChannelColor =
                              uniqueColorGenerator.getColorFromChanelBlue();
                        });
                      },
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild:
                          selectedColor == ColorRGB.red ? kActibeBoxIcom : null,
                      onPress: () {
                        setState(() {
                          selectedColor = ColorRGB.red;
                          randomFromChannelColor =
                              uniqueColorGenerator.getColorFromChanelRed();
                        });
                      },
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                        cardChild: selectedColor == ColorRGB.green
                            ? kActibeBoxIcom
                            : null,
                        onPress: () {
                          setState(() {
                            selectedColor = ColorRGB.green;
                            randomFromChannelColor =
                                uniqueColorGenerator.getColorFromChanelGreen();
                          });
                        },
                        color: Colors.green),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '2. See your random selected \n color in HEX:',
                  style: kTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Text(
                  '$randomFromChannelColor',
                  style: kLableTextStyle,
                  textAlign: TextAlign.center,
                ),
                color: randomFromChannelColor,
              ),
            ),
            ButtomButton(
                title: 'HOME PAGE',
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
