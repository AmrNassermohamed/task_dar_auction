import '../../../../Resources/main_imports.dart';
import '../../../../Resources/assets_manager.dart';
import '../../../../Resources/routes_manager.dart';
import '../../../Widgets/navigate_to.dart';
import '../Widgets/onBoarding_main_page.dart';

class OnBoardingData {
  static var boardController = PageController();
  static var sliderController = PageController();

  static bool isLast = false;
  static bool isFirst = false;


  static List screens = [
    const OnBoardingMainPage(

      description: '',
      img: ImageAssets.onBoarding,
    ),
    const OnBoardingMainPage(

      description: '',
      img: ImageAssets.onBoarding,
    ),
    const OnBoardingMainPage(

      description: '',
      img: ImageAssets.onBoarding,
    ),
  ];

  static void submit(context) {
    Navigation.navigateWithName(context, Routes.homeRoute);
  }
}
