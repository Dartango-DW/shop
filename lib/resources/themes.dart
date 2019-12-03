import 'package:flutter/material.dart';
import './colors.dart';

final darkModeTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.darkIndigo,
  accentColor: AppColors.green,
  backgroundColor: AppColors.darkIndigo,
  scaffoldBackgroundColor: AppColors.darkIndigo,
  dividerColor: AppColors.dusk,
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
  ),
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
    elevation: 0.0,
    color: AppColors.darkIndigo,
  ),
);

final lightModeTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.greenLight,
  accentColor: AppColors.green,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: AppColors.paleGrey,
  dividerColor: AppColors.lightGreyBorder,
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
  ),
  appBarTheme: AppBarTheme(
    brightness: Brightness.light,
    elevation: 0.0,
    color: AppColors.paleGrey,
  ),
);
