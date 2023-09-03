import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_func_project/getiing_started/slide_model.dart';
import 'package:ui_func_project/getiing_started/text_styling.dart';
import 'package:ui_func_project/ui/constraints/icons.dart';

class SlideContent extends StatelessWidget {
  final int index;
  
  const SlideContent({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.72,
          margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top+20),
          child: RichText(
            text: TextSpan(
              style: TextStyling.mainStyling,
              children: [
                TextSpan(
                  text: 'Your holiday shopping delivered to Screen ${slideList[index].mainText}'
                ),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(AppIcons.gsTextIcon),
                  )
                )
              ]
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width*0.72,
          margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top+24),
          child: Text(
            "There's something for everyone to enjoy with Sweet Shop Favourites Screen ${slideList[index].subText}",
            style: TextStyling.preStyling,
          ),
        ),
      ],
    );
  }
}