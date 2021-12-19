import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier{
  List<product>_items = [



  product(
  id: 'p1',
  title: 'Red Shirt',
  describetion: 'A red shirt - it is pretty red!',
  price: 29.99,
  imageUrl:'https://m.media-amazon.com/images/I/51jhXuG27BL._AC_UX385_.jpg'
  //isFavorite: null,
  ),
  product(
  id: 'p2',
  title: 'Trousers',
  describetion: 'A nice pair of trousers.',
  price: 59.99,
  imageUrl:
  'https://5.imimg.com/data5/CE/XG/MY-68030708/mens-readymade-pink-shirt-500x500.jpg',

  ),
  product(
  id: 'p1',
  title: 'Red Shirt',
  describetion: 'A red shirt - it is pretty red!',
  price: 29.99,
  imageUrl:'https://allensolly.imgix.net/img/app/product/3/343733-1664487.jpg'
  //isFavorite: null,
  ),
  product(
  id: 'p2',
  title: 'Trousers',
  describetion: 'A nice pair of trousers.',
  price: 59.99,
  imageUrl:
  'https://rukminim1.flixcart.com/image/714/857/kkbh8cw0/shirt/t/z/z/l-kcsh-110-pp-6-fubar-original-imafzzs3ccmsdfbn.jpeg?q=50',

  ),


  ];

  List<product> get items {
    return [..._items];
  }
void addProduct(){
  //  _items.add(value);
    notifyListeners();
}
  }
