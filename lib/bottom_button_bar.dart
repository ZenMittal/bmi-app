import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButtonBar extends StatelessWidget {
  BottomButtonBar({this.text, this.routePage});

  final String text;
  final Widget routePage;

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
      onTap: () {
        if (this.routePage == null) {
          Navigator.pop(context);
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return this.routePage;
            }),
          );
        }
      },
    );
  }
}
