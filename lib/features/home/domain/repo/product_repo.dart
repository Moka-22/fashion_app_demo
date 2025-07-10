// domain/repositories/products_repository.dart

import 'package:fashion_app/features/home/domain/entity/product_entity.dart';

abstract class ProductsRepository {
  Future<List<ProductEntity>> getProducts();
}
