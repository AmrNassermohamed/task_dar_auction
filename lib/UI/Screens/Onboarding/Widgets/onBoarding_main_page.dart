

import '../../../../Resources/main_imports.dart';

class OnBoardingMainPage extends StatefulWidget {
  const OnBoardingMainPage(
      {Key? key,

      required this.description,
      required this.img})
      : super(key: key);

  final String description;
  final String img;

  @override
  State<OnBoardingMainPage> createState() => _OnBoardingMainPageState();
}

class _OnBoardingMainPageState extends State<OnBoardingMainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: height(context) * .1,
          ),
          Image.asset(
            widget.img,
            height: height(context) * .6,
            width: width(context),
            // fit: BoxFit.fill,
          ),
          AppSize.spaceHeight3(context),
          DefaultButton(
            function: () {},
            isWidget: true,
            text: 'LOG IN',
            btnWidth: width(context) * .7,
            fontSize: FontSize.textS20(context),
          )
        ],
      ),
    );
  }
}
