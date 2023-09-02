import 'package:flutter/material.dart';
import 'package:ui_func_project/getiing_started/gs_slide_content.dart';
import 'package:ui_func_project/getiing_started/slide_model.dart';
import 'package:ui_func_project/ui/buttons.dart';
import 'package:ui_func_project/ui/constraints/icons.dart';
import 'package:ui_func_project/ui/custom_button_stylings.dart';

class GettingStarted extends StatelessWidget {
  final PageController _pageController = PageController(
    initialPage: 0
  );
  GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                itemCount: slideList.length,
                itemBuilder: (context, index) => SlideContent(index: index),
              )
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.05),
              child: ElevatedButton(
                style: CustomButtonsStyling.gsButton,
                onPressed: (){},
                child: GetStartedButton(
                  text: 'Get Started', svgPic: AppIcons.gsArrowIcon,
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}