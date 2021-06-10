import 'package:flutter/material.dart';
import 'mfcard.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final Function onPress;
  final String id;

  ReusableCard({this.cardColor, this.cardChild, this.onPress, this.id});

  void mypress() {
    this.onPress;
    var msg = 'ReusableCard on press';
    if (this.cardChild is MFCard) {
      MFCard card = this.cardChild;
      var txt = card.getText();
      msg = msg + '(' + txt + ')';
    }
    print(msg);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: mypress,  //onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardColor,
        ),
      )
    );
  }
}