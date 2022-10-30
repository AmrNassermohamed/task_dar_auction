import '../../../../Resources/main_imports.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: width(context) * .1,
            child: FloatingActionButton(
              heroTag: 'backBtn',
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
        const Spacer(),
        SizedBox(
            width: width(context) * .1,
            child: FloatingActionButton(
              heroTag: 'favorite',
              onPressed: () {},
              backgroundColor: ColorManager.wight,
              child: Icon(
                Icons.favorite_border,
                color: ColorManager.greyColor100,
                size: width(context) * .05,
              ),
            )),
        AppSize.spaceWidth4(context),
        SizedBox(
            width: width(context) * .1,
            child: FloatingActionButton(
              heroTag: 'share',
              onPressed: () {},
              backgroundColor: ColorManager.wight,
              child: Icon(
                Icons.share_rounded,
                color: ColorManager.greyColor100,
                size: width(context) * .05,
              ),
            )),
      ],
    );
  }
}
