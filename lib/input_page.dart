import 'package:flutter/material.dart';
import './GenderIcon.dart';
import './Container.dart';

const bottomcontainerheight = 80.0;
const bottomcontainercolour = Color(0xFFa53a3b);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RepeatedContainer(
                    childWidget: GenderIcon(
                      ikona: 'assets/male.png',
                      gender: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatedContainer(
                    childWidget: GenderIcon(
                      gender: 'FEMALE',
                      ikona: 'assets/female.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RepeatedContainer(),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RepeatedContainer(),
                ),
                Expanded(
                  child: RepeatedContainer(),
                ),
              ],
            ),
          ),
          Container(
            color: bottomcontainercolour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomcontainerheight,
          )
        ],
      ),
    );
  }
}
