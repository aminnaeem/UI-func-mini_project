import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_func_project/ui/constraints/colors.dart';

List bannersList = [
  BannerOne(),
  BannerTwo(),
  BannerThree()
];


class BannerOne extends StatelessWidget {
  const BannerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(16)
      ),
      height: 123,
      width: 556,
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/banner_images/banner1_image.png',
            height: 68,
            width: 46,
          ),
          Column(
            children: [
              Text("Get"),
              Text("50% OFF"),
              Text("on first 03 Orders")
            ],
          )
        ],
      ),
    );
  }
}

class BannerTwo extends StatelessWidget {
  const BannerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16)
      ),
      color: AppColors.secondaryColor,
      height: 123,
      width: 556,
      child: Row(
        children: [
          SvgPicture.asset('assets/images/banner_images/banner1_image.png'),
          Column(
            children: [
              Text("Get"),
              Text("50% OFF"),
              Text("on first 03 Orders")
            ],
          )
        ],
      ),
    );
  }
}
class BannerThree extends StatelessWidget {
  const BannerThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16)
      ),
      color: AppColors.secondaryColor,
      height: 123,
      width: 556,
      child: Row(
        children: [
          SvgPicture.asset('assets/images/banner_images/banner1_image.png'),
          Column(
            children: [
              Text("Get"),
              Text("50% OFF"),
              Text("on first 03 Orders")
            ],
          )
        ],
      ),
    );
  }
}