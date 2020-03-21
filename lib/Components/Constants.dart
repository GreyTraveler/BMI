import 'package:flutter/material.dart';

const kBottomcontainerheight = 80.0;
const kBottomcontainercolour = Color(0xFFa53a3b);
const kDefaultcontainercolour = Color(0xFFf4e3b1);
const kButtonColour = Color(0xFFd96b0c);
const kIconColor = Color(0xFF14325c);

const kLabelTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

final kNumberStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w800);

final kSliderTheme = SliderThemeData(
  activeTrackColor: kIconColor,
  thumbColor: kButtonColour,
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 11.0),
);

final kLargeButton = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: kDefaultcontainercolour,
);

final kresulttext = TextStyle(
  color: kIconColor,
  fontSize: 25,
);

final kresultnumber = TextStyle(
  color: Color(0xFFd96b0c),
  fontWeight: FontWeight.bold,
  fontSize: 60,
);
