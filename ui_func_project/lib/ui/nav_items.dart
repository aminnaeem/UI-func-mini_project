import 'package:ui_func_project/ui/constraints/icons.dart';

class NavItems {
  final SvgIcons icon;
  final String label;

NavItems({required this.icon, required this.label});
}

final navItemsList = [
  NavItems(
    icon: SvgIcons(assetName: BottomNavIcons.homeIcon),
    label: "Home"
  ),
  NavItems(
    icon: SvgIcons(assetName: BottomNavIcons.categoryIcon),
    label: "Category"
  ),
  NavItems(
    icon: SvgIcons(assetName: BottomNavIcons.favouritesIcon),
    label: "Favourites"
  ),
  NavItems(
    icon: SvgIcons(assetName: BottomNavIcons.moreIcon),
    label: "More"
  ),  
];