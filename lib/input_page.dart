import 'package:flutter/material.dart';
import './GenderIcon.dart';
import './Container.dart';

const bottomcontainerheight = 80.0;
const bottomcontainercolour = Color(0xFFa53a3b);
const defaultcontainercolour = Color(0xFFf4e3b1);
const inactivecontainercolour = Color(0xFFb0a994);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  int plec = 0;
  double maleOpacity = 1.0;
  double femaleOpacity = 1.0;
  void _changeOpacity() {
    setState(() {
      if (plec == 1) {
        maleOpacity = 1.0;
        femaleOpacity = 0.5;
      } else if (plec == 2) {
        maleOpacity = 0.5;
        femaleOpacity = 1.0;
      }
    });
  }

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
                  child: GestureDetector(
                    onTap: () {
                      plec = 1;
                      _changeOpacity();
                    },
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 45),
                      opacity: maleOpacity,
                      child: RepeatedContainer(
                        colour: defaultcontainercolour,
                        childWidget: GenderIcon(
                          ikona: 'assets/male.png',
                          gender: 'MALE',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      plec = 2;
                      _changeOpacity();
                    },
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 45),
                      opacity: femaleOpacity,
                      child: RepeatedContainer(
                        colour: defaultcontainercolour,
                        childWidget: GenderIcon(
                          gender: 'FEMALE',
                          ikona: 'assets/female.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RepeatedContainer(
              colour: defaultcontainercolour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RepeatedContainer(
                    colour: defaultcontainercolour,
                  ),
                ),
                Expanded(
                  child: RepeatedContainer(
                    colour: defaultcontainercolour,
                  ),
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
