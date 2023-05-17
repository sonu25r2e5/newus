import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
        id: '12',
        description: 'needed',
        price: 233,
        imageUrl:
            'https://media.istockphoto.com/id/1172559976/photo/mens-red-blank-t-shirt-template-from-two-sides-natural-shape-on-invisible-mannequin-for-your.jpg?s=612x612&w=0&k=20&c=7-YzsXJuScL2lAkIA2DtGgFEKW9SDkdN3wtt0-ImcDs=',
        title: 'Red t-shirt'),
    Product(
        id: '55',
        description: 'needed',
        price: 233,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKhXinaDYNVACsWWVxzIstimceLxrt_G6Zdr6t7t8&s',
        title: 'Pants'),
    Product(
        id: '55',
        description: 'needed',
        price: 233,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXZPJD2REI4pR-PK18BeJXbN1e5Yrt59rlPD9Nn3A&s',
        title: 'trouser'),
    Product(
        id: '22',
        description: "ther are needed in windter",
        price: 233,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: '22',
        description: "ther are needed in windter",
        price: 233,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: '22',
        description: "ther are needed in windter",
        price: 233,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: '22',
        description: "ther are needed in windter",
        price: 233,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: '22',
        description: "ther are needed in windter",
        price: 233,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: '22',
        description: "ther are needed in windter",
        price: 233,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
    Product(
        id: '22',
        description: "ther are needed in windter",
        price: 233,
        imageUrl:
            'https://www.marknepal.com/wp-content/uploads/2020/06/FB_IMG_1592014577528.jpg',
        title: 'Half pants'),
  ];

  ProductsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MyShop'),
      ), // how the gird show be structure.
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10),
        itemBuilder: (ctx, i) => ProductItem(
          id: loadedProducts[i].id,
          imageUrl: loadedProducts[i].imageUrl,
          title: loadedProducts[i].title,
        ),
        itemCount: loadedProducts.length,
      ),
    );
  }
}
