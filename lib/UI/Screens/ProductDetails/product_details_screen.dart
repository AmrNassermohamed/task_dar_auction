




import 'package:dar_auction/UI/Screens/ProductDetails/Components/header.dart';
import 'package:dar_auction/UI/Screens/ProductDetails/Components/product_footer.dart';
import 'package:dar_auction/UI/Screens/ProductDetails/Components/product_slider.dart';


import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Resources/main_imports.dart';
import '../../../Models/products_model.dart';
import '../../../ui/Screens/ProductDetails/Cubit/cubit.dart';
import '../../../ui/Screens/ProductDetails/Cubit/states.dart';




class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key, required this.products}) : super(key: key);
  final Products products;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: Scaffold(
        body: BlocBuilder<ProductCubit, ProductStates>(
          builder: (context, state) {
            return SafeArea(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: height(context),
                    width: width(context),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageAssets.splashBackground),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children:  [
                          const ProductHeader(),
                          AppSize.spaceHeight1(context),
                          ProductSlider(products: products,),
                        ],
                      ),
                    ),
                  ),
                  ProductFooter(products: products,)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
