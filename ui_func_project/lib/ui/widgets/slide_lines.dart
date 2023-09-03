import 'package:flutter/material.dart';
import 'package:ui_func_project/ui/constraints/colors.dart';

class SlideLines extends StatelessWidget {
  final bool isActive;

  const SlideLines({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 6 : 4,
      width: isActive ? 50 : 30,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryTextColor : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}