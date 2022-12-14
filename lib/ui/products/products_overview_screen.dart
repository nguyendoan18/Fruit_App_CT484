//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../cart/cart_screen.dart';
import 'products_grid.dart';
import '../shared/app_drawer.dart';

import '../cart/cart_manager.dart';
import 'top_right_badge.dart';

enum FilterOptions { favorites, all }

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({super.key});

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('MyShop'),
    //     actions: <Widget>[
    //       buildProductFilterMenu(),
    //       buildShoppingCartIcon(),
    //     ],
    //   ),
    //   body: ProductsGrid(_showOnlyFavaorites),
    // );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit App'),
        actions: <Widget>[
          buildProductFilterMenu(),
          buildShoppingCartIcon(),
        ],
      ),
      drawer: const AppDrawer(),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }

  // Widget buildShoppingCartIcon() {
  //   return IconButton(
  //     icon: const Icon(
  //       Icons.shopping_cart,
  //     ),
  //     // onPressed: () {
  //     //   print('Go to cart screen');
  //     // });
  //     onPressed: () {
  //       Navigator.of(context).pushNamed(CartScreen.routeName);
  //     },
  //   );
  // }
  // Widget buildShoppingCartIcon() {
  //   return TopRightBadge(
  //     data: CartManager().productCount,
  //     child: IconButton(
  //       icon: const Icon(
  //         Icons.shopping_cart,
  //       ),
  //       onPressed: () {
  //         Navigator.of(context).pushNamed(CartScreen.routeName);
  //       },
  //     ),
  //   );
  // }
  Widget buildShoppingCartIcon() {
    return Consumer<CartManager>(
      builder: (ctx, cartManager, child) {
        return TopRightBadge(
          data: cartManager.productCount,
          child: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              Navigator.of(ctx).pushNamed(CartScreen.routeName);
            },
          ),
        );
      },
    );
  }

  Widget buildProductFilterMenu() {
    return PopupMenuButton(
      onSelected: (FilterOptions selectedValue) {
        setState(() {
          if (selectedValue == FilterOptions.favorites) {
            _showOnlyFavorites = true;
          } else {
            _showOnlyFavorites = false;
          }
        });
      },
      icon: const Icon(
        Icons.more_vert,
      ),
      itemBuilder: (ctx) => [
        const PopupMenuItem(
          value: FilterOptions.favorites,
          child: Text('Ch??? y??u th??ch'),
        ),
        const PopupMenuItem(
          value: FilterOptions.all,
          child: Text('Hi???n th??? t???t c???'),
        ),
      ],
    );
  }
}
//CK21V7K024