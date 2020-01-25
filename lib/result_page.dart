import 'package:flutter/material.dart';

import 'custom_card.dart';
import 'constants.dart';
import 'bottom_button_bar.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              'Your Result',
              style: kLargeTextStyle,
            ),
          ),
          Expanded(
            child: CustomCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text('data1'),
                  ),
                  Center(
                    child: Text('data2'),
                  ),
                  Center(
                    child: Text('data3'),
                  )
                ],
              ),
            ),
          ),
          BottomButtonBar(text: 'RE-CALCULATE')
        ],
      ),
    );
  }
}

