import 'package:flutter/material.dart';
import './Constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton(
    @required this.icon,
    @required this.onPressed,
  );
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 28,
        color: kIconColor,
      ),
      constraints: BoxConstraints(
        maxWidth: 50.0,
        maxHeight: 40.0,
        minWidth: 50.0,
        minHeight: 40.0,
      ),
      elevation: 7.0,
      onPressed: onPressed,
      onLongPress: onPressed,
      fillColor: kButtonColour,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
