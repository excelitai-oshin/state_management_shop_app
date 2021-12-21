import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/product_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products_provider.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create:(ctx)=> Products(),
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(

          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
        ),
        home: productsOverviewScreen(),
        routes: {
          ProductDetailScreen.routName:(ctx) =>  ProductDetailScreen(),

        },
      ),
    );
  }
}