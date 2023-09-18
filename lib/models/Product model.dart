import 'package:flutter_data/flutter_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Product model.g.dart';

@JsonSerializable()
class Product extends DataModel<Product> {
  @override
  final int id;
  final int tenantId;
  final String name;
  final String description;
  final bool isAvailable;

  Product({
    required this.id,
    required this.tenantId,
    required this.name,
    required this.description,
    required this.isAvailable,
  });

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}