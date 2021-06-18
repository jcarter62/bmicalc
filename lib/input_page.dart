import 'package:bmicalc/constants.dart';
import 'package:bmicalc/reusablecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'mfcard.dart';
import 'constants.dart';
import 'results_page.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: kTextStyle,
                      ),
                      Text(
                        ' cm',
                        style: kTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    min: 0.0,
                    max: 200.0,
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      print(newValue);
                      setState(() {
                        height = newValue.floor();
                      });
                    },
                  )
                ],
              ),
            )),
            Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        cardColor: kActiveCardColor,
                        cardChild: Column(
                          children: [
                            Text(
                              'Weight',
                              style: kTextStyle,
                            ),
                            Text(
                              weight.toString() + ' kg',
                              style: kTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  child: Icon(FontAwesomeIcons.plus),
                                  onPressed: () {
                                    setState(() {
                                      weight += 1;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  child: Icon(FontAwesomeIcons.minus),
                                  onPressed: () {
                                    setState(() {
                                      weight -= 1;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ))),
                Expanded(
                    child: ReusableCard(
                  onPress: () {},
                  cardColor: kActiveCardColor,
                  cardChild: MFCard(text: 'Age'),
                )),
              ],
            ),
            Center(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResultsPage()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Calculate',
                      style: kBigTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    color: kBottomContainerColor,
                    margin: EdgeInsets.only(top: 10.0),
                    width: double.infinity,
                    height: kBottomContainerHeight,
                  )),
            ),
          ],
        ));
  }
}

class RoundIconButton extends StatefulWidget {
  Function onPressed;
  Widget child;

  RoundIconButton({this.onPressed, this.child});

  @override
  _RoundIconButtonState createState() => _RoundIconButtonState();
}

class _RoundIconButtonState extends State<RoundIconButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      onPressed: this.widget.onPressed,
      fillColor: Color(0xff4c4f5e),
      child: this.widget.child,
    );
  }
}
