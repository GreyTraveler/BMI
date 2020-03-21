import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/GenderIcon.dart';
import '../Components/Container.dart';
import '../Components/Constants.dart';
import '../Components/RoundIconButton.dart';
import '../Components/BottomButton.dart';

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
  int height = 170;
  int weight = 60;
  int age = 20;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      colour: kDefaultcontainercolour,
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
                      colour: kDefaultcontainercolour,
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
                colour: kDefaultcontainercolour,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberStyle,
                        ),
                        Text(
                          ' cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: kSliderTheme,
                      child: Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 250,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RepeatedContainer(
                    colour: kDefaultcontainercolour,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(weight.toString(), style: kNumberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              Icons.remove,
                              () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(Icons.add, () {
                              setState(() {
                                weight++;
                              });
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatedContainer(
                    colour: kDefaultcontainercolour,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(age.toString(), style: kNumberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(Icons.remove, () {
                              setState(() {
                                age--;
                              });
                            }),
                            SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(Icons.add, () {
                              setState(() {
                                age++;
                              });
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            'CALCULATE MY BMI !',
            () {
              Navigator.pushNamed(context, '/results');
            },
          )
        ],
      ),
    );
  }
}
