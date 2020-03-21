import 'package:flutter/material.dart';
import 'package:matibmi/Components/Constants.dart';

class GenderIcon extends StatelessWidget {
  @override
  final String ikona;
  final String gender;
  GenderIcon({@required this.ikona, @required this.gender});
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage(ikona),
          width: 80,
          height: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
