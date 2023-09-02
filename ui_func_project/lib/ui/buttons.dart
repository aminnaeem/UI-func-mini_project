import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_func_project/ui/buttons_text_styling.dart';

class GetStartedButton extends StatelessWidget {
  final String text;
  final svgPic;

  const GetStartedButton({super.key, required this.text, this.svgPic});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 220,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: ButtonsTextStyle.GsButtonTextStyle),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.1,
          ),
          SvgPicture.asset(svgPic)
        ],
      ),
    );
  }
}