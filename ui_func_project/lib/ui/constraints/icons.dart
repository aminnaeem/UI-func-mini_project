import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIcons {
  static var gsTextIcon = "assets/icons/gs_icon.svg";
  static var gsArrowIcon = "assets/icons/gs_arrow.svg";
  static var gsScreenOn = "assets/icons/screen_on.svg";
  static var gsScreenOff = "assets/icons/screen_off.svg";
}

class SvgIcons extends StatelessWidget {
  final String assetName;
  final double size;
  final Color color;

  const SvgIcons({super.key, required this.assetName, this.size = 24, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(
        color,
        BlendMode.srcIn
      ),
    );
  }
}

class BottomNavIcons {
  static var homeIcon = "assets/icons/bottom_nav_bar_icons/home.svg";
  static var categoryIcon = "assets/icons/bottom_nav_bar_icons/category.svg";
  static var favouritesIcon = "assets/icons/bottom_nav_bar_icons/favourites.svg";
  static var moreIcon = "assets/icons/bottom_nav_bar_icons/more_vertical.svg";
}