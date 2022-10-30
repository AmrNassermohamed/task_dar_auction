import 'package:dar_auction/Resources/assets_manager.dart';

import '../../../../Resources/main_imports.dart';

class AddPayment extends StatelessWidget {
  AddPayment({Key? key}) : super(key: key);
  List images = [
    ImageAssets.payMethod1,
    ImageAssets.payMethod2,
    ImageAssets.payMethod3,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_rounded, color: Colors.black),
            label: const Text(
              'Add new',
              style: TextStyle(color: Colors.black),
            )),
        SizedBox(
          height: height(context) * .07,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: width(context)*.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorManager.wight,
                ),
                child: Image(
                  image: AssetImage(images[index]),
                ),
              );
            },
            separatorBuilder: (context, index) => AppSize.spaceWidth2(context),
            itemCount: images.length,
          ),
        )
      ],
    );
  }
}
