import 'package:flutter/material.dart';
import 'package:newus/providers/cart.dart';
import 'package:newus/screens/cart_screen.dart';
import 'package:provider/provider.dart';
import '../widgets/products_grid.dart';
import '../widgets/app_drawer.dart';

enum FilterOptions {
  favorites,
  all,
}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({super.key});

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  // var _showOnlyfavorites = false;

  @override
  Widget build(BuildContext context) {
    var showOnlyfavorites = false;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MyShop'),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.favorites) {
                  showOnlyfavorites = true;
                } else {
                  showOnlyfavorites = false;
                }
              });
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favorites,
                child: Text('Only favorites'),
              ),
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text('Show all'),
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              label: Text(cart.itemCount.toString()),
              child: ch,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      drawer: const AppDrawer(), // how the gird show be structure.
      body: ProductGrid(showOnlyfavorites),
    );
  }
}
