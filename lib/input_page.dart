import 'package:bmicalc/constants.dart';
import 'package:bmicalc/reusablecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'mfcard.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  onPress: () {},
                  cardColor: kActiveCardColor,
                  cardChild: MFCard(icon: FontAwesomeIcons.mars, text: 'male'),
                )),
                Expanded(
                    child: ReusableCard(
                  onPress: () {},
                  cardColor: kInactiveCardColor,
                  cardChild:
                      MFCard(icon: FontAwesomeIcons.venus, text: 'female'),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: kTextStyle,
                  ),
                ],
              ),
            )),
            Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  onPress: () {},
                  cardColor: kActiveCardColor,
                  cardChild: MFCard(icon: FontAwesomeIcons.mars, text: 'male'),
                )),
                Expanded(
                    child: ReusableCard(
                  onPress: () {},
                  cardColor: kActiveCardColor,
                  cardChild: MFCard(icon: FontAwesomeIcons.mars, text: 'male'),
                )),
              ],
            )
          ],
        ));
  }
}
