import 'package:bmicalc/constants.dart';
import 'package:flutter/material.dart';

class MFCard extends StatelessWidget {
  final IconData icon;
  final String text;

  MFCard({this.icon, this.text});

  String getText(){
    return this.text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(this.icon, size: 80.0, color: Colors.white,),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.text,
          style: kTextStyle,
        )
      ],
    );
  }
}