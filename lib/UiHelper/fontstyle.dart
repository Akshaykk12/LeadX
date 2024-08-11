import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  Color textColor = Colors.white
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
  Color textColor = Colors.black
}){
  return TextStyle(
    fontFamily: 'Inter',
    color: textColor,
    fontSize: 24,
    letterSpacing: 1.5
  );
}