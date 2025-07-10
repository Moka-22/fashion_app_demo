

import 'package:fashion_app/features/home/data/data_source/product_remote_data_source.dart';
import 'package:fashion_app/features/home/domain/entity/product_entity.dart';
import 'package:fashion_app/features/home/domain/repo/product_repo.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsRemoteDataSource remoteDataSource;
  ProductsRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<ProductEntity>> getProducts() {
    return remoteDataSource.getProducts();
  }
}
