import 'package:flutter/material.dart';
import 'package:ui_func_project/ui/constraints/colors.dart';

class CustomButtonsStyling {
  static var gsButton = ButtonStyle(
    
    backgroundColor: MaterialStateProperty.all(AppColors.primaryTextColor),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
    ),
  );
}