import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.title,
  });

  final String id;
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
          trailing: const IconButton(
            onPressed: null,
            icon: Icon(Icons.shopping_bag),
          ),
          leading:
              const IconButton(onPressed: null, icon: Icon(Icons.favorite)),
          backgroundColor: Colors.black54,
          title: Text(
            title,
            textAlign: TextAlign.center,
          )),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
