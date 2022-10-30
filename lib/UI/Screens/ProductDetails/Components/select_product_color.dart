import '../../../../Data/homedata.dart';
import '../../../../Resources/main_imports.dart';

class SelectProductColor extends StatelessWidget {
  const SelectProductColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:height(context)*.02 ),
      child: Row(
        children: [
          Text(
            '\$ ${ HomePageData.products.price.toString()}',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: FontSize.textS20(context),
              color: ColorManager.primaryColor,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: ColorManager.greyDarkColor)),
            child: CircleAvatar(
              backgroundColor: ColorManager.greyDarkColor,
              radius: 10,
            ),
          ),
          AppSize.spaceWidth1(context),
          CircleAvatar(
            backgroundColor: ColorManager.greyColor100,
            radius: 10,
          ),
          AppSize.spaceWidth1(context),
          CircleAvatar(
            backgroundColor: ColorManager.grayColor,
            radius: 10,
          )
        ],
      ),
    );
  }
}
