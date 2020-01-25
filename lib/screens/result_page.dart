import 'package:flutter/material.dart';

import 'package:bmi_calculator/components/custom_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button_bar.dart';
import 'input_page.dart';

Map<String, String> weight = {
  'UNDERWEIGHT':
      'Your weight is less than healthy amount. Love yourself more and eat more.',
  'HEALTHY': 'Congratulations! Your body weight is healthy and normal',
  'OVERWEIGHT':
      'Your weight is more than healthy amount. Love yourself more and excercising more.'
};

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
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              'Your Result',
              style: kLargeTextStyle,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CustomCard(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'UNDERWEIGHT',
                        style: TextStyle(
                            color: Color(0xFF24d876),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        '20.3',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 80),
                      ),
                    ),
                    Center(
                      child: Text(
                        weight['UNDERWEIGHT'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButtonBar(text: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
