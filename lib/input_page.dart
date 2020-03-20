import 'package:flutter/material.dart';
import './GenderIcon.dart';
import './Container.dart';

const bottomcontainerheight = 80.0;
const bottomcontainercolour = Color(0xFFa53a3b);
const defaultcontainercolour = Color(0xFFf4e3b1);
const inactivecontainercolour = Color(0xFFb0a994);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Gender selectedGender;

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
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 45),
                    opacity: selectedGender == Gender.male
                        ? 1.0
                        : 0.5, // if wybrana płeć to male to ustaw 1 else 0.5
                    child: RepeatedContainer(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: defaultcontainercolour,
                      childWidget: GenderIcon(
                        ikona: 'assets/male.png',
                        gender: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 45),
                    opacity: selectedGender == Gender.female ? 1.0 : 0.5,
                    child: RepeatedContainer(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: defaultcontainercolour,
                      childWidget: GenderIcon(
                        gender: 'FEMALE',
                        ikona: 'assets/female.png',
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
