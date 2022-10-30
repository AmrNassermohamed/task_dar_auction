


import '../../../../Resources/main_imports.dart';
import '../../../../ui/Screens/PaymentScreen/Components/select_payment_method.dart';

class ShippingMethod extends StatelessWidget {
  const ShippingMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSize.spaceHeight2(context),
    Text(
          'Shipping method',
          style: TextStyle(
              color: ColorManager.blackColor,
              fontSize: FontSize.textS16(context))
        ),
        AppSize.spaceHeight2(context),
        DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Container(
                width: width(context),
                height: height(context) * .04,
                decoration: BoxDecoration(
                  color: ColorManager.tabBar,
                  borderRadius: BorderRadius.circular(45),
                ),
                child: TabBar(
                  // isScrollable: true,
                  labelColor: Colors.black,
                  // labelPadding: EdgeInsets.zero,
                  indicatorColor: ColorManager.wight,
                  unselectedLabelColor: Colors.white,
                  padding: const EdgeInsets.all(3),
                  indicator: BoxDecoration(
                    color: ColorManager.wight,
                    borderRadius: BorderRadius.circular(45),
                  ),
                  tabs: const [
                    Tab(
                      text: 'Home delivery',
                    ),
                    Tab(
                      text: 'Pick up in store',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height(context) * .45,
                child: TabBarView(children: [
                  SelectPaymentMethod(),
                  Container(),
                ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
