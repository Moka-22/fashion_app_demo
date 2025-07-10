import 'package:fashion_app/features/home/domain/entity/product_entity.dart';
import 'package:fashion_app/features/home/domain/repo/product_repo.dart';

class GetProductsUseCase {
  final ProductsRepository repository;
  GetProductsUseCase(this.repository);

  Future<List<ProductEntity>> call() => repository.getProducts();
}
