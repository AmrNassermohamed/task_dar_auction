
import 'package:dar_auction/Resources/assets_manager.dart';

import '../../../../Resources/main_imports.dart';
import 'add_payment.dart';



class SelectPaymentMethod extends StatelessWidget {
  SelectPaymentMethod({Key? key}) : super(key: key);
  List images = [
    ImageAssets.payment1,
    ImageAssets.payment2,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child:  Text('Select your payment method',style:TextStyle(
              color: ColorManager.blackColor,
              fontSize: FontSize.textS14(context)))),
          SizedBox(
            height: height(context) * .2,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                        EdgeInsets.symmetric(vertical: index == 0 ? 0 : 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image(
                      image: AssetImage(images[index]),
                      fit: BoxFit.fill,
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: width(context) * .02,
                    ),
                itemCount: 2),
          ),
           AddPayment(),
          AppSize.spaceHeight12(context),
          AppSize.spaceHeight12(context),
        ],
      ),
    );
  }
}
