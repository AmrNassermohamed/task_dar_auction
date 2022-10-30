import '../../../../Resources/main_imports.dart';

class PaymentHeader extends StatelessWidget {
  const PaymentHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: width(context) * .1,
            child: FloatingActionButton(
              heroTag: 'back',
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: ColorManager.wight,
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: ColorManager.greyColor100,
                size: width(context) * .05,
              ),
            )),
        AppSize.spaceWidth3(context),
    Text(
          'Checkout',
          style: TextStyle(
              color: ColorManager.blackColor,
              fontSize: FontSize.textS16(context)),
        )
      ],
    );
  }
}
