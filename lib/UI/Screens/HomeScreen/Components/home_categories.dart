import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Resources/main_imports.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider<HomeScreenCubit>(
        create: (context) =>
        HomeScreenCubit()..getCategoriesCubit(),
        child: BlocConsumer<HomeScreenCubit, HomeScreenStates>(
            listener: (context, state) =>
            State is CategoriesSuccess,
            builder: (context, state) {
          return    LayoutBuilder(builder: (context, constraints) {

                return SizedBox(
                  height:constraints.maxWidth>400? height(context) * .06:height(context) * .05,
                  child: state is CategoriesSuccess
                      ? ListView.separated(
                      itemCount: state
                          .categoriesModel.categoryList.length,
                      separatorBuilder: (context, index)=>const SizedBox(width: 15,),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>

                         InkWell(
                        onTap: () {

                        },
                        child:

                        Container(
                          padding: constraints.maxWidth>400?  EdgeInsets.all(AppSize.padding2(context)):EdgeInsets.all(AppSize.padding(context)),
                          decoration: BoxDecoration(
                            color: ColorManager.wight,
                            borderRadius:
                            constraints.maxWidth>400?       BorderRadius.circular(
                                AppSize.borderRadius25(context)):BorderRadius.circular(
                                AppSize.borderRadius25(context)),
                          ),

                          child: Center(
                            child: Text(state
                                .categoriesModel
                                .categoryList[index],style: TextStyle(
                              color: ColorManager.blackColor,

                              fontSize: FontSize.textS16(context),
                            )),
                          ),
                        ),
                      ))
                      : const Center(
                      child:SizedBox()));
            });}));
  }
}
