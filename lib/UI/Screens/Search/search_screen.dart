import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Resources/main_imports.dart';
import '../HomeScreen/cubit/cubit.dart';
import '../HomeScreen/cubit/states.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenCubit()..getSearchCubit(),
      child: Scaffold(
        backgroundColor: ColorManager.wight,
        body: BlocBuilder<HomeScreenCubit, HomeScreenStates>(
            builder: (context, state) {
          //ServicesScreenCubit cubit = ServicesScreenCubit.get(context);
          return SafeArea(
            child:  SingleChildScrollView(
                child:

                Container(
                  padding: EdgeInsets.all(AppSize.padding2(context)),

                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageAssets.splashBackground),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Text('Search',
                              style: TextStyle(
                                color: ColorManager.blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: FontSize.textS25(context),
                              )),
                          const SizedBox(
                            height: 0,
                          )
                        ],
                      ),
                      AppSize.spaceHeight3(context),
                      state is SearchSuccess
                          ? ListView.builder(
                              itemCount: state.productModel.products.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(AppSize.padding2(context)),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ColorManager.wight,
                                        borderRadius: BorderRadius.circular(
                                            AppSize.borderRadius10(context)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            AppSize.padding2(context)),
                                        child: Row(
                                          children: [

CircleAvatar(radius: AppSize.borderRadius25(context),child:
                                            Image.network(state.productModel
                                                .products[index].thumbnail,height: height(context)*0.08,fit:BoxFit.cover,)),
                                            AppSize.spaceWidth2(context),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                    state.productModel
                                                        .products[index].title,
                                                    style: TextStyle(
                                                      color:
                                                          ColorManager.blackColor,
                                                      fontSize: FontSize.textS18(
                                                          context),
                                                    )),

                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )))
                          : const SizedBox(
                              height: 0,
                            ),
                    ],
                  ),
                ),
              ),

          );
        }),
      ),
    );
  }
}
