import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CustomIconContent extends StatelessWidget {
  CustomIconContent({@required this.icon, @required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          this.text,
          style: kSmallTextStyle,
        )
      ],
    );
  }
}