import 'package:flutter/material.dart';
import 'package:ui_func_project/ui/constraints/colors.dart';
import 'package:ui_func_project/ui/constraints/fonts.dart';

class AppTheme {
  static ThemeData customTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.primaryColor,
      fontFamily: AppFonts.primaryBoltFont,
    );
  }
}