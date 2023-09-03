import 'package:flutter/material.dart';
import 'package:ui_func_project/getiing_started/gs_slide_content.dart';
import 'package:ui_func_project/getiing_started/slide_model.dart';
import 'package:ui_func_project/ui/buttons.dart';
import 'package:ui_func_project/ui/constraints/icons.dart';
import 'package:ui_func_project/ui/custom_button_stylings.dart';
import 'package:ui_func_project/ui/widgets/slide_lines.dart';

class GettingStarted extends StatefulWidget {

  GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  int _currentPage = 0;
  final ValueNotifier currentIndexNotifier = ValueNotifier(0);

  final PageController _pageController = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onScreenChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    itemCount: slideList.length,
                    onPageChanged: _onScreenChanged,
                    itemBuilder: (context, index) => SlideContent(index: index),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 35, left: MediaQuery.of(context).size.width*0.12),
                        child: Row(
                          children: [
                            for(int i = 0; i < slideList.length; i++)
                              if(i == _currentPage)
                                SlideLines(isActive: true)
                              else
                                SlideLines(isActive: false)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ),
            Container(
          alignment: AlignmentDirectional.bottomCenter,
          margin: EdgeInsets.all(40),
          child: Image.asset(slideList[0].slideImage)
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