import '../../../../Data/homedata.dart';
import '../../../../Resources/main_imports.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'FREE SHIPPING',
          style: TextStyle(color: ColorManager.greyDarkColor),
        ),
        const Spacer(),
        Icon(
          Icons.star_rate_rounded,
          color: ColorManager.rate,
        ),
        Text(
          HomePageData.products.rating.toString(),
          style: TextStyle(color: ColorManager.greyDarkColor),
        ),
        Text(
          '(${ HomePageData.products.stock.toString()})',
          style: TextStyle(color: ColorManager.greyDarkColor),
        )
      ],
    );
  }
}
