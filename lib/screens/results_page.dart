import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/overlay_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmi, @required this.resultText, @required this.interpretation});

  final String bmi;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALACULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: OverlayCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kResultNumberStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kResultBodyTextStyle,
                  ),
                  BottomButton(
                    data: 'RE-CALCULATE',
                    onTap: () {
                      Navigator.pushNamed(context, '/inputpage');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
