import 'package:flutter/material.dart';

class RepeatedContainer extends StatelessWidget {
  @override
  final Color colour;
  final Widget childWidget;
  RepeatedContainer({@required this.colour, this.childWidget});
  Widget build(BuildContext context) {
    return Container(
      child: childWidget,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
