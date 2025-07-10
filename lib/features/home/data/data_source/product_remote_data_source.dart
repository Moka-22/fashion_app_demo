import 'package:dio/dio.dart';
import '../models/product_model.dart';

class ProductsRemoteDataSource {
  final Dio dio;
  ProductsRemoteDataSource(this.dio);

  Future<List<ProductModel>> getProducts() async {
    final response = await dio.get('https://dummyjson.com/products');
    final productsJson = response.data['products'] as List;
    return productsJson.map((e) => ProductModel.fromJson(e)).toList();
  }
}
