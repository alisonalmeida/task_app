import 'package:flutter/material.dart';

const mainColor = Color.fromRGBO(233, 230, 248, 1);
const secondaryColor = Color.fromRGBO(28, 28, 28, 1);

ThemeData mainTheme = ThemeData(
  primaryColor: mainColor,
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(secondaryColor), // Substitua
      iconColor: WidgetStateProperty.all(Colors.white), // Substitua
    ),
  ),
);
