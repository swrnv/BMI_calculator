import 'package:bmi_app/reusables/reuse_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/reusables/constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiresult,
      @required this.interpretation,
      @required this.resultTest});

  final String bmiresult;
  final String resultTest;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "Result",
                  style: kTitleTextStyle.copyWith(color: Colors.black54),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuseCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultTest,
                    style: kresultTextStyle,
                  ),
                  Text(bmiresult, style: kBMITextStyle),
                  Text(
                    interpretation,
                    style: kResultExplain,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              ontap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
