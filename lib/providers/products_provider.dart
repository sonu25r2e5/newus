import 'package:flutter/material.dart';

import 'product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: 'p1',
        description: 'A red shit - it is a preety red you know',
        price: 50,
        imageUrl:
            'https://media.istockphoto.com/id/1172559976/photo/mens-red-blank-t-shirt-template-from-two-sides-natural-shape-on-invisible-mannequin-for-your.jpg?s=612x612&w=0&k=20&c=7-YzsXJuScL2lAkIA2DtGgFEKW9SDkdN3wtt0-ImcDs=',
        title: 'Red T-shirt'),
    Product(
        id: 'p2',
        description: 'Pant\'s are good source for you traveling to your paths.'
            '',
        price: 50,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKhXinaDYNVACsWWVxzIstimceLxrt_G6Zdr6t7t8&s',
        title: 'Pants'),
    Product(
        id: 'p3',
        description: 'we have two set '
            'of trouser\'s if you need '
            'it then ',
        price: 50,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXZPJD2REI4pR-PK18BeJXbN1e5Yrt59rlPD9Nn3A&s',
        title: 'trouser'),
    Product(
        id: 'p4',
        description: "ther are needed in windter",
        price: 80,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: 'p5',
        description: "ther are needed in windter",
        price: 66,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: 'p6',
        description: "ther are needed in windter",
        price: 60,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: 'p7',
        description: "ther are needed in windter",
        price: 22,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: 'p8',
        description: "ther are needed in windter",
        price: 233,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: 'p9',
        description: "ther are needed in windter",
        price: 22,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: 'p10',
        description: "ther are needed in windter",
        price: 23,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
  ];

  // var _showfavoritesOnly = false;

  List<Product> get items {
    //   if (_showfavoritesOnly) {
    //     return _items.where((prodItem) => prodItem.isFavorite).toList();
    //   }
    return [..._items]; // .......sperator operator
  }

  List<Product> get favoriteItems {
    return _items
        .where((prodItem) => prodItem.isFavorite)
        .toList(); // convert it to the newlist .
    // reach out to those getter instes
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showfavoritesOnly(){
  //   _showfavoritesOnly = true;
  //    notifyListeners();
  // }

  // void showAll(){
  //   _showfavoritesOnly = false;
  //  notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners(); // establish a communication channel within
  }
}

// add mixin maxin is a bit like extending of the class
/*  change notififier class*/

// inherientance widget. establish behind the communication channel
