import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/Constants.dart';
import '../Components/Container.dart';
import '../Components/BottomButton.dart';

class Results extends StatelessWidget {
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
                    'YOU RESULT',
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
                      'Wynik',
                      style: kresulttext,
                    ),
                    Text(
                      'Cyfra',
                      style: kresultnumber,
                    ),
                    Text(
                      'Komentarz',
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
