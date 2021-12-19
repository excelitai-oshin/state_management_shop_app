import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_shope_app/providers/products_provider.dart';
import '../models/product.dart';
import 'product_item.dart';
class productsGrid extends StatelessWidget {

const productsGrid({
Key? key,
required this.loadedproducts,
}) : super(key: key);

final List<product> loadedproducts;

@override
Widget build(BuildContext context) {
  final productsData=Provider.of<Products>(context);
  final products =productsData.items;
  return GridView.builder(
    padding:  const EdgeInsets.all(10.0),
    itemCount: loadedproducts.length,
    itemBuilder: (ctx,i) => ProductItem(
      loadedproducts[i].id,
      loadedproducts[i].title,
      loadedproducts[i].imageUrl,

    ),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 3/2,
      crossAxisSpacing:10,
      mainAxisSpacing:10,
    ),
  );
}
}