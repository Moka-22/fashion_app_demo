import 'package:fashion_app/features/home/domain/entity/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required super.id,
    required super.title,
    required super.category,
    required super.price,
    required super.thumbnail,
    required super.description,
    required super.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      category: json['category'],
      price: json['price'].toDouble(),
      thumbnail: json['thumbnail'],
      description: json['description'],
      rating: json['rating'].toDouble(),
    );
  }
}
