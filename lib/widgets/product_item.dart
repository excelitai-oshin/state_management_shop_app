import 'package:flutter/material.dart';
import 'package:state_management_shope_app/providers/product.dart';
import 'package:state_management_shope_app/providers/product.dart';
import 'package:state_management_shope_app/providers/products_provider.dart';
//import 'package:state_management_shope_app/providers/product.dart';

import 'package:state_management_shope_app/screens/product_detail_screen.dart';
import 'package:state_management_shope_app/screens/product_overview_screen.dart';
import 'package:state_management_shope_app/widgets/products_grid.dart';
import '../providers/product.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;



  ProductItem (this.id,this.title,  this.imageUrl, );

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context,listen:  false);
    return Consumer<Products>(
      builder:(ctx,product,child) =>ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(
              ProductDetailScreen.routName,
              arguments: id,
          );
        },
        child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black38,
            leading: IconButton(
              icon: Icon(Icons.favorite),
              color: Theme.of(context).accentColor,
              onPressed: () {

              },
            ),
            title:
            Text(title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: (){},
              color: Theme.of(context).accentColor,
            ),
            ),

        ),
      ),

    );
  }

}
