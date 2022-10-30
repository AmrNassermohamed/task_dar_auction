
import 'package:dar_auction/ui/Screens/ProductDetails/Cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductStates> {
  ProductCubit() : super(ProductInitialState());

  static ProductCubit get(context) => BlocProvider.of(context);

  int selectedImage = 0;

  void changeBottomNavBar(int index) {
    selectedImage = index;
    emit(ProductBottomNavState());
  }
}
