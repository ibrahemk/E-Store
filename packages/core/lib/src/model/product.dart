import 'package:json_annotation/json_annotation.dart';
import 'category.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final List<String> images;
  final Category category;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
