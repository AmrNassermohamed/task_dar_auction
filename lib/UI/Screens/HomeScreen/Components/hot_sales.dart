
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Resources/main_imports.dart';
import '../../../../ui/Screens/ProductDetails/product_details_screen.dart';
import '../../../../ui/Widgets/navigate_to.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';

class HotSales extends StatelessWidget {
  const HotSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenCubit>(
        create: (context) => HomeScreenCubit()..getProductCubit(),
        child: BlocConsumer<HomeScreenCubit, HomeScreenStates>(
            listener: (context, state) => State is CategoriesSuccess,
            builder: (context, state) {
    return    LayoutBuilder(builder: (context, constraints)
    {
      return Container(
        child: state is ProductSuccess
            ? SizedBox(
            height:constraints.maxWidth>400? height(context) * .22:height(context) * .2,
            child: ListView.separated(
              itemCount: state.productModel.products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  Container(
                    padding: EdgeInsets.all(AppSize.padding2(context)),
                    width: width(context) * .35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorManager.wight70,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 3), //
                        )
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigation.navigateTo(
                            context,
                            ProductDetailsScreen(
                                products: state
                                    .productModel.products[index]));
                      },
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DefaultButton(
                              radius: AppSize.borderRadius10(context),
                              btnHeight: height(context) * .025,
                              textColor: ColorManager.primaryColor,
                              btnWidth: AppSize.width20(context),
                              fontSize: FontSize.textS13(context),
                              isWidget: true,
                              function: () {},
                              text: 'Free shipping',
                              background: ColorManager.wight,
                            ),
                            constraints.maxWidth>400? AppSize.spaceHeight2(context):     AppSize.spaceHeight1(context),
                            Image.network(
                              state.productModel.products[index]
                                  .thumbnail,
                              height: height(context) * .085,
                              width: width(context),
                            ),
                            AppSize.spaceHeight1(context),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    state.productModel.products[index]
                                        .title,
                                    style: TextStyle(
                                      color: ColorManager.blackColor,
                                      fontSize:
                                      FontSize.textS14(context),
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      '\$ ${state.productModel.products[index]
                                          .price.toString()}',
                                      style: TextStyle(
                                          color:
                                          ColorManager.blackColor,
                                          fontSize:
                                          FontSize.textS14(context),
                                          fontWeight: FontWeight.w600)),
                                ])
                          ],
                        ),
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) =>
                  AppSize.spaceWidth3(context),
            ))
            : const SizedBox(),
      );
    });
            }));
  }
}
