import 'package:dar_auction/Models/catageories_model.dart';
import 'package:dar_auction/Models/products_model.dart';
abstract class HomeScreenStates {}
class HomeScreenInitialState extends HomeScreenStates {}
class CategoriesSuccess extends HomeScreenStates  {
  final CategoriesModel categoriesModel;
  CategoriesSuccess ({
    required this.categoriesModel
  });
}
class CategoriesError extends HomeScreenStates{
}
class CategoriesLoading extends HomeScreenStates{
}
class ProductSuccess extends HomeScreenStates  {
  final ProductModel productModel;
  ProductSuccess ({
    required this.productModel
  });
}
class ProductError extends HomeScreenStates{
}
class SearchLoading extends HomeScreenStates{
}class SearchSuccess extends HomeScreenStates  {
  final ProductModel productModel;
  SearchSuccess ({
    required this.productModel
  });
}
class SearchError extends HomeScreenStates{
}
class ProductLoading extends HomeScreenStates{
}