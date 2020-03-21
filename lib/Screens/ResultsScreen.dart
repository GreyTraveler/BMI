import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants.dart';
import '../Components/Container.dart';
import '../Components/BottomButton.dart';

class Results extends StatelessWidget {
  Results(
      {@required this.bmiresults,
      @required this.resultText,
      @required this.interpretation});

  final String bmiresults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Center(
                child: Container(
                  child: Text(
                    'YOUR RESULT!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0,
                      color: kDefaultcontainercolour,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: RepeatedContainer(
                colour: kDefaultcontainercolour,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kresulttext,
                    ),
                    Text(
                      bmiresults,
                      style: kresultnumber,
                    ),
                    Text(
                      interpretation,
                      style: kresulttext,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              'TAKE ME BACK',
              () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
