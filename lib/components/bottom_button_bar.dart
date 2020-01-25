import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class BottomButtonBar extends StatelessWidget {
  BottomButtonBar({this.text, this.onTap});

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 80,
        color: kBottomColor,
        padding: EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            this.text,
            style: kMedTextStyle,
          ),
        ),
      ),
      onTap: this.onTap,
    );
  }
}
