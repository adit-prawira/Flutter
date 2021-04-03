import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsButton extends StatelessWidget {
  final Function onTap;
  final String buttonTittle;
  ResultsButton({@required this.onTap, @required this.buttonTittle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(buttonTittle, style: kLargeButtonTextStyle),
        ),
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}
