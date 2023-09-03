import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_func_project/ui/constraints/icons.dart';

class ScreenNav extends StatefulWidget {
  final ValueNotifier currentIndexNotifier;
  const ScreenNav({super.key, required this.currentIndexNotifier});

  @override
  State<ScreenNav> createState() => _ScreenNavState();
}

class _ScreenNavState extends State<ScreenNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.72,
      child: Row(
        children: [
          if (widget.currentIndexNotifier.value == 0)
            SvgPicture.asset(AppIcons.gsScreenOn),
          if (widget.currentIndexNotifier.value == 0)
            SizedBox(
              width: 6,
            ),
          if (widget.currentIndexNotifier.value == 0)
            SvgPicture.asset(AppIcons.gsScreenOff),
          if (widget.currentIndexNotifier != 0)
            SvgPicture.asset(AppIcons.gsScreenOff),
          if (widget.currentIndexNotifier != 0)
            SizedBox(
              width: 6,
            ),
          if (widget.currentIndexNotifier.value != 0)
            SvgPicture.asset(AppIcons.gsScreenOn),
        ],
      ) 
    );
  }
}