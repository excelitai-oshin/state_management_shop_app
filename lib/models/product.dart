import 'package:flutter/foundation.dart';

class product{
  final String id;
  final String title;
  final String describetion;
  final double price;
  final String imageUrl;
  bool? isFavorite;
//hfgvjsdf
  product({
    required this.id,
    required this.title,
    required this.describetion,
    required this.price,
    required this.imageUrl,
    this.isFavorite,
  });
}

