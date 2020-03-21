import 'package:flutter/material.dart';
import '../Constants.dart';

class BottomButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  BottomButton(@required this.label, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBottomcontainercolour,
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: kBottomcontainerheight,
      child: FlatButton(
        child: Text(
          label,
          style: kLargeButton,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
