import 'package:flutter/material.dart';
import 'package:ui_func_project/getiing_started/text_styling.dart';
import 'package:ui_func_project/ui/constraints/icons.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width*0.75,
              margin: EdgeInsets.only(top: 33, left: 42),
              child: RichText(
                text: TextSpan(
                  style: TextStyling.mainStyling,
                  children: [
                    const TextSpan(
                      text: "Your holiday shopping   delivered to Screen one"
                    ),
                    WidgetSpan(child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Image.asset(AppIcons.gsIcon,
                      height: 40,
                      width: 40,),
                      )
                    )
                  ]
                )
              ),
            ),
            Container(
              height: 89,
              margin: const EdgeInsets.only(left: 42),
              width: MediaQuery.of(context).size.width*0.75,
              child: Text(
                "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
                style: TextStyling.preStyling,
              ),
            )
          ],
        ),
      ),
    );
  }
}