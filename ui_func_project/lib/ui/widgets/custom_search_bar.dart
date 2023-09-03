import 'package:flutter/material.dart';
import 'package:ui_func_project/ui/constraints/colors.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final TextEditingController searchBar = TextEditingController();
  CustomSearchBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: hintText ,
      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (states) {
          if (states.contains(MaterialState.focused)) {
            return TextStyle(
              color: AppColors.primaryTextColor,
            );
          }
          return TextStyle(
            color: AppColors.secondaryTextColor,
          );
        },
      ),
      controller: searchBar,
      leading: Icon(Icons.search,
        color: AppColors.primaryTextColor,
        ),
      backgroundColor: MaterialStateProperty.all(AppColors.searchBarColor),
    );
  }
}