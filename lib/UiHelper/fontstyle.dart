import 'package:flutter/material.dart';

TextStyle heading2({
  Color textColor = Colors.white,
  double textSize = 45
}){
  return TextStyle(
      fontFamily: 'Monda',
      fontSize: textSize,
      color: textColor,
      letterSpacing: 3.3,
      fontWeight: FontWeight.w700
  );
}

TextStyle heading1({
  Color textColor = Colors.black,
  double textSize = 35
}){
  return TextStyle(
    fontFamily: 'JockeyOne',
    fontSize: textSize,
    color: textColor,
    letterSpacing: 4.0,
  );
}

TextStyle heading3({
  Color textColor = Colors.white,
  double textSize = 35
}){
  return TextStyle(
    fontFamily: 'Monda',
    color: textColor,
    fontSize: textSize,
    fontWeight: FontWeight.w500,
    letterSpacing: 3.0,
  );
}

TextStyle subHeading({
  Color textColor = Colors.black,
  double textSize = 24,
  FontWeight textWeight = FontWeight.w600
}){
  return TextStyle(
      fontFamily: 'Inter',
      color: textColor,
      fontSize: textSize,
      fontWeight: textWeight,
      letterSpacing: 1.5
  );
}