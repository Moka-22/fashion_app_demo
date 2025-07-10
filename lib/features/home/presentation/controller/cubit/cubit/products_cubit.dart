import 'package:fashion_app/features/home/domain/entity/product_entity.dart';
import 'package:fashion_app/features/home/domain/use_case/product_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final GetProductsUseCase getProductsUseCase;

  ProductsCubit(this.getProductsUseCase) : super(ProductsInitial());

  Future<void> fetchProducts() async {
    emit(ProductsLoading());
    try {
      final products = await getProductsUseCase();
      emit(ProductsLoaded(products));
    } catch (e) {
      emit(ProductsError(e.toString()));
    }
  }
}
