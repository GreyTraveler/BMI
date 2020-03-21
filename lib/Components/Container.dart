import 'package:flutter/material.dart';

class RepeatedContainer extends StatelessWidget {
  @override
  final Color colour;
  final Widget childWidget;
  final Function onPressed;

  RepeatedContainer({@required this.colour, this.childWidget, this.onPressed});
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: childWidget,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
