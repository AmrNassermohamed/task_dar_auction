import '../../../../Data/homedata.dart';
import '../../../../Resources/main_imports.dart';

class ProductDescriptions extends StatelessWidget {
  const ProductDescriptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSize.spaceHeight1(context),
        Text(
          HomePageData.products.title,
          style: TextStyle(

              fontSize: FontSize.textS20(context),
              fontStyle: FontStyle.italic),
        ),
        AppSize.spaceHeight1(context),
        Text(
          HomePageData.products.description,
          style: TextStyle(

            fontSize: FontSize.textS16(context),
            color: ColorManager.greyColor100,
          ),
        ),
      ],
    );
  }
}
