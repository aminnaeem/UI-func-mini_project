import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui_func_project/ui/constraints/colors.dart';
import 'package:ui_func_project/ui/widgets/custom_search_bar.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> with TickerProviderStateMixin {
  
  int _currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width*0.90,
                child: Row(
                  children: [
                    Text("Hey, Halal"),
                    Spacer(),
                    Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.shopping_cart_outlined, color: AppColors.primaryTextColor, size: 24)
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: AppColors.secondaryColor,
                        )
                      ],
                    )
                  ],
                )
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 56,
                    width: MediaQuery.of(context).size.width*0.90,
                    child: CustomSearchBar(hintText: "Search Product or Store")
                  ),
                  Container(
                    child: const Row(
                      children: [
                        Column(
                          children: [
                            Text("DELIVERED TO"),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Green Way 3000, Sylhet"),
                                Icon(Icons.arrow_drop_down_rounded)
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text("WITHIN"),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("1 Hour"),
                                Icon(Icons.arrow_drop_down_rounded)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: AppColors.primaryTextColor,
              ),
            ),
          ],
        ),
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