import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_func_project/ui/constraints/colors.dart';
import 'package:ui_func_project/ui/home_banners.dart';
import 'package:ui_func_project/ui/widgets/custom_top_bar.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> with TickerProviderStateMixin {
  late final PageController pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.75,
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: CustomTopBar()
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: AppColors.primaryTextColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: PageView.builder(
                      controller: pageController,
                      itemBuilder: (context, index){
                        return AnimatedBuilder(
                          animation: pageController,
                          builder: (ctx, child){
                            return child!;
                          },
                          child: Container(
                            margin: EdgeInsets.all(4),
                            child: SvgPicture.asset("assets/images/home_banner1.svg")
                          ),
                        );
                      },
                      itemCount: bannersList.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: AppColors.primaryTextColor,
              child: Column(
                children: [
                  Text("Recommended"),
                  Row(
                    children: [
                      Container(
                        height: 194,
                        width: 128,
                        decoration: BoxDecoration(
                          color: AppColors.cardColor,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 68,
                              width: 68,
                              child: Image.asset("assets/images/card_images/lemon.png"),
                            ),
                            Container(
                              height: 2,
                              width: 90,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryTextColor,
                                borderRadius: BorderRadius.circular(6)
                              ),
                            ),
                            Text("Fresh Lemon"),
                            Text("organic"),
                            Spacer(),
                            Container(
                              height: 24,
                              width: 108,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryTextColor,
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text("Unit")
                                      ),
                                      Text("12"),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          padding: EdgeInsets.all(8.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.blue, // Button background color
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white, // Button icon color
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ]
                              ),
                            )
                          ]
                        ),
                      )
                    ],
                  )
                ],
              ),
            ) 
          )
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [Icons.home, Icons.category, Icons.favorite_outline, Icons.more_vert_rounded],
        activeIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}