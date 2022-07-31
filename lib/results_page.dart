import 'package:bmi/input_page.dart';
import 'package:bmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/bottom_button.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
    required this.getColor,
  });
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final Color getColor;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF090C21),
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Center(
                  child: Text(
                    'Your Result',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 90,
                    ),
                    Text(
                      resultText,
                      style: TextStyle(
                          fontSize: 20,
                          color: getColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Normal BMI range:',
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '18.5 - 25 kg/m²',
                      style: kInterpretationTextStyle,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kInterpretationTextStyle,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
            bottomButton(
              buttonTitle: 'RE-CALCULATE YOUR BMI',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
