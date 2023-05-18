import 'package:flutter/material.dart';
import 'package:newus/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
import '../providers/product.dart';
import '../providers/cart.dart';

class ProductItem extends StatelessWidget {
  // const ProductItem({
  //   super.key,
  //   required this.id,
  //   required this.imageUrl,
  //   required this.title,
  // });
  //
  // final String id;
  // final String title;
  // final String imageUrl;

  @override
  Widget build(BuildContext context) {
   final product =  Provider.of<Product>(context, listen: false);
   final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(19),
      child: GridTile(
        footer: GridTileBar(
            trailing: IconButton(
              onPressed: () {
                cart.addItem(product.id, product.price, product.title);
              },
              icon: const Icon(Icons.shopping_bag),
              color: Theme.of(context).colorScheme.secondary,
            ),
            leading: IconButton(
              onPressed: () {
                product.toggleFavoriteStatus();
              },
              color: Theme.of(context).colorScheme.secondary,
              icon:  Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border),
            ),
            backgroundColor: Colors.black54,
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            )),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ProductDetailScreen.routeName, arguments: product.id);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
