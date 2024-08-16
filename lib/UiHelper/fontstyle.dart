import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

TextStyle heading2({
  Color textColor = Colors.white
}){
  return TextStyle(
    fontFamily: 'Monda',
    fontSize: 45,
    color: textColor,
    letterSpacing: 3.3,
    fontWeight: FontWeight.w700
  );
}

TextStyle heading1({
  Color textColor = Colors.black
}){
  return TextStyle(
    fontFamily: 'JockeyOne',
    fontSize: 35,
    color: textColor,
    letterSpacing: 4.0,
  );
}

TextStyle heading3({
  Color textColor = Colors.white
}){
  return TextStyle(
    fontFamily: 'Monda',
    color: textColor,
    fontSize: 35,
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