


import '../../../../Resources/main_imports.dart';
import '../../../Widgets/navigate_to.dart';
import '../../PaymentScreen/payment_screen.dart';


class BuyNowSection extends StatelessWidget {
  const BuyNowSection({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: ColorManager.grayColor),

          ),
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  '-',
                  style: TextStyle(
                      fontSize: FontSize.textS25(context),
                      color: ColorManager.greyDarkColor),
                ),
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.all(5),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
              AppSize.spaceWidth3(context),
              Text('4',
                  style: TextStyle(
                      fontSize: FontSize.textS25(context),
                      color: ColorManager.greyDarkColor)),
              AppSize.spaceWidth3(context),
              TextButton(
                onPressed: () {},
                child: Text(
                  ('+'),
                  style: TextStyle(
                      fontSize: FontSize.textS25(context),
                      color: ColorManager.greyDarkColor),
                ),
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding:  const EdgeInsets.all(5),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ],
          ),
        ),
        AppSize.spaceWidth5(context),
        AppSize.spaceWidth5(context),
        Expanded(
          child: DefaultButton(
            function: () {
              Navigation.navigateTo(context, const PaymentScreen());

            },
            isWidget: true,

            text: 'Buy Now',
            background: ColorManager.primaryColor,
            textColor: ColorManager.wight,
            fontSize: FontSize.textS18(context),
          ),
        )
      ],
    );
  }
}
