import 'package:dar_auction/Resources/assets_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../Resources/main_imports.dart';

import 'Data/onBoarding_data.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageAssets.splashBackground),
                fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: OnBoardingData.boardController,
                onPageChanged: (int index) {
                  if (index > 0) {
                    setState(() {
                      OnBoardingData.isFirst = true;
                    });
                  } else {
                    setState(() {
                      OnBoardingData.isFirst = false;
                    });
                  }
                  if (index == OnBoardingData.screens.length - 1) {
                    setState(() {
                      OnBoardingData.isLast = true;
                    });
                  } else {
                    setState(() {
                      OnBoardingData.isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) => OnBoardingData.screens[index],
                itemCount: 3,
              ),
            ),

            Center(
              child: SmoothPageIndicator(
                controller: OnBoardingData.boardController,
                effect: ExpandingDotsEffect(
                  // dotColor: Colors.grey,
                  activeDotColor: ColorManager.primaryColor,
                  dotColor: ColorManager.wight70,
                  dotHeight: 10,
                  expansionFactor: 4,
                  dotWidth: 10,
                  spacing: 5,
                  // paintStyle: PaintingStyle.stroke,
                ),
                count: OnBoardingData.screens.length,
              ),
            ),
            AppSize.spaceHeight1(context),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        if (OnBoardingData.isFirst) {
                          OnBoardingData.boardController.previousPage(
                            duration: const Duration(milliseconds: 750),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                        }
                      },
                      child: Text(
                        OnBoardingData.isLast ? '' : 'Previous',
                        style: TextStyle(
                            color: ColorManager.wight,
                            fontWeight: FontWeight.w500,
                            fontSize: FontSize.textS20(context)),
                      )),
                  TextButton(
                      onPressed: () {
                        if (OnBoardingData.isLast) {
                          OnBoardingData.submit(context);
                        } else {
                          OnBoardingData.boardController.nextPage(
                            duration: const Duration(milliseconds: 750),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                        }
                      },
                      child: Text(
                        OnBoardingData.isLast ? 'SKIP' : 'Next',
                        style: TextStyle(
                            color: ColorManager.wight,
                            fontWeight: FontWeight.w500,
                            fontSize: FontSize.textS20(context)),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
