import '../../../../Resources/main_imports.dart';
import '../../../../Resources/assets_manager.dart';

class ProductData extends StatelessWidget {
  const ProductData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: width(context) * .2,
              height: width(context) * .2,
              decoration: BoxDecoration(
                  color: ColorManager.wight,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Image(
              image: AssetImage(ImageAssets.productCart),
              width: width(context) * .3,
              height: width(context) * .25,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sony WH-1000XM4',
              style: TextStyle(
                // color: ColorManager.b,
                  fontWeight: FontWeight.w700,
                  fontSize: FontSize.textS20(context),
                  fontStyle: FontStyle.italic),
            ),
            AppSize.spaceHeight2(context),
            Text(
              '\$ 2,999',
              style: TextStyle(
                  color: ColorManager.primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: FontSize.textS20(context)),
            ),
          ],
        )
      ],
    );
  }
}
