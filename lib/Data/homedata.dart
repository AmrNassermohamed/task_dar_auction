import '../Models/catageories_model.dart';
import '../Models/products_model.dart';
import '../Service/dio_helper.dart';

class HomePageData {
  static getCategoriesData() async {
    try {
      await DioHelper.init();
      var value = await DioHelper.getData(url: "products/categories");
      CategoriesModel categoriesModel = CategoriesModel.fromJson(value.data);
      return categoriesModel;
    } catch (ex) {
      rethrow;
    }
  }

  static getProductsData() async {
    try {
      await DioHelper.init();
      var value = await DioHelper.getData(url: "products");
      ProductModel productModel = ProductModel.fromJson(value.data);
      return productModel;
    } catch (ex) {
      rethrow;
    }
  }

  static getSearchData(String name) async {
    try {
      await DioHelper.init();
      var value = await DioHelper.getData(url: "products/search?q=${name.toString()}");
      ProductModel productModel = ProductModel.fromJson(value.data);
      return productModel;
    } catch (ex) {
      rethrow;
    }
  }

  static Products products = Products(
    id: 0,
    title: '',
    description: '',
    price: 0,
    discountPercentage: 0.0,
    rating: 0.0,
    stock: 1,
    brand: '',
    category: '',
    thumbnail: '',
    images: [],
  );
}
