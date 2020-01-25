import 'package:flutter/material.dart';

import 'package:bmi_calculator/components/custom_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button_bar.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.result);

  final Map<String, String> result;

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
                        result['result'],
                        style: TextStyle(
                            color: Color(0xFF24d876),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        result['bmi'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 80),
                      ),
                    ),
                    Center(
                      child: Text(
                        result['interpretation'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButtonBar(text: 'RE-CALCULATE', onTap: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
