import '../ui/constraints/images.dart';

class Slide {
  final String mainText;
  final String subText;
  final String slideImage;

Slide({required this.slideImage, required this.mainText, required this.subText});
}

final slideList = [
  Slide(
    mainText: 'one',
    subText: '1',
    slideImage: "${AppImages.gsSlide1}"
  ),
  Slide(
    mainText: 'two',
    subText: '2',
    slideImage: "${AppImages.gsSlide2}"
  )
];