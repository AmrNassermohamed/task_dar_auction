import 'package:dar_auction/Data/homedata.dart';
import 'package:dar_auction/Models/products_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Models/catageories_model.dart';
import 'states.dart';

class HomeScreenCubit extends Cubit<HomeScreenStates> {
  HomeScreenCubit() : super(HomeScreenInitialState());
static String searchName="";

  getCategoriesCubit() async {
    try {
      CategoriesModel categoriesModel = await HomePageData.getCategoriesData();
      emit(CategoriesSuccess(categoriesModel: categoriesModel));
    } catch (ex) {
      emit(CategoriesError());
      rethrow;
    }
  }

  getProductCubit() async {
    try {
      ProductModel productModel = await HomePageData.getProductsData();
      emit(ProductSuccess(productModel: productModel));
    } catch (ex) {
      emit(ProductError());
      rethrow;
    }
  }

  getSearchCubit(name) async {
    try {
      ProductModel productModel = await HomePageData.getSearchData(searchName);
      emit(SearchSuccess(productModel: productModel));
    } catch (ex) {
      emit(SearchError());
      rethrow;
    }
  }
}
