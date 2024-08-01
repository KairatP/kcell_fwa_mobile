
import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/envirement/colors.dart';

final darkTheme = ThemeData(
  useMaterial3: true,
  textTheme: textTheme,
  scaffoldBackgroundColor: AppColors.darkBackgroundColor,
  dividerTheme: const DividerThemeData(
    color: AppColors.kcellMain,
  ),
  colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.kcellMain, brightness: Brightness.dark),
  primaryColor: AppColors.kcellMain,
  secondaryHeaderColor: AppColors.kcellMain,
);

final lightTheme = ThemeData(
  useMaterial3: true,
  textTheme: textTheme,
  scaffoldBackgroundColor: AppColors.kcellMain,
  dividerTheme: const DividerThemeData(
    color: AppColors.kcellMain,
  ),
  colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.kcellMain, brightness: Brightness.light),
  primaryColor: AppColors.kcellMain,
  hintColor: AppColors.kcellMain,
  secondaryHeaderColor: AppColors.kcellMain,
);

const textTheme = TextTheme(
  titleMedium: TextStyle(
      fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.blackColor),
  headlineLarge: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  ),
);