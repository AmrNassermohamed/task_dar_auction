import 'package:dar_auction/Models/products_model.dart';
import 'package:dar_auction/UI/Screens/ProductDetails/Components/buy_now_section.dart';
import '../../../../Data/homedata.dart';
import '../../../../Resources/main_imports.dart';
import '../../../../ui/Screens/ProductDetails/Components/product_descriptions.dart';
import '../../../../ui/Screens/ProductDetails/Components/product_rate.dart';
import '../../../../ui/Screens/ProductDetails/Components/select_product_color.dart';

class ProductFooter extends StatelessWidget {
   const ProductFooter({Key? key, required this.products}) : super(key: key);
final Products products;

  @override
  Widget build(BuildContext context) {
    HomePageData.products=products;
    return Container(

      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: ColorManager.wight,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSize.spaceHeight3(context),
            const ProductRate(),
            const ProductDescriptions(),
            const SelectProductColor(),
            const BuyNowSection(),
            AppSize.spaceHeight3(context),
          ],
        ),
      ),
    );
  }
}
