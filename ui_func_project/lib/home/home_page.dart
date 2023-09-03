import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui_func_project/ui/constraints/colors.dart';

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
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width*0.80,
                color: AppColors.primaryColor,
                
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