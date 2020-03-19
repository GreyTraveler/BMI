import 'package:flutter/material.dart';

const defaultcontainercolour = Color(0xFFf4e3b1);

class RepeatedContainer extends StatelessWidget {
  @override
  final Color colour;
  final Widget childWidget;
  RepeatedContainer({this.colour, this.childWidget});
  Widget build(BuildContext context) {
    return Container(
      child: childWidget,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: defaultcontainercolour,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
