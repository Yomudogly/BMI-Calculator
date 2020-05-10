import 'package:flutter/material.dart';

import '../components/reusable_card.dart';
import '../constants.dart';
import '../components/custom_buttons.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiNumber,
      @required this.bmiResult,
      @required this.bmiInterpretation});

  final String bmiNumber;
  final String bmiResult;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              widgetColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiNumber,
                    style: kResultNumberStyle,
                  ),
                  Text(
                    bmiInterpretation,
                    style: kResultInterpretationStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            buttonTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
