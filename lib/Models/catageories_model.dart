class CategoriesModel {
  CategoriesModel({required this.categoryList});

  late final List<String> categoryList;

  CategoriesModel.fromJson(json) {
    categoryList = List.from(json);
  }
}
