import 'package:flutter/material.dart';
import 'package:state_management_shope_app/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
// final String title;
// final String price;
//
// ProductDetailScreen(this.title,this.price);

static const routName= '/product-detail';
  @override
  Widget build(BuildContext context) {
   final productId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
        title: Text('title'),
    ),
    );
  }
}
