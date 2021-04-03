import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/card_content.dart';
import '../components/results_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResults, resultsText, resultsFeedback;
  ResultsPage({
    @required this.bmiResults,
    @required this.resultsText,
    @required this.resultsFeedback,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Text(
                "Your Results",
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultsText.toUpperCase(), style: kResultTextStlye),
                  Text(bmiResults, style: kBMITextStyle),
                  Text(
                    resultsFeedback,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ResultsButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTittle: "RE-CALCULATE",
          )
        ],
      ),
    );
  }
}
