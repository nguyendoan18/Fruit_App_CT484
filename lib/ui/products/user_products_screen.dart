import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'edit_product_screen.dart';
import 'user_product_list_tile.dart';
import 'products_manager.dart';
import '../shared/app_drawer.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';
  const UserProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsManager = ProductsManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sản phẩm của bạn'),
        actions: <Widget>[
          // buildAddButton(),
          buildAddButton(context),
        ],
      ),
      drawer: const AppDrawer(),
      body: RefreshIndicator(
        onRefresh: () async => print('Làm mới sản phẩm'),
        // child: buildUserProductListView(productsManager),
        child: buildUserProductListView(),
      ),
    );
  }

  // Widget buildUserProductListView(ProductsManager productsManager) {
  //   return ListView.builder(
  //     itemCount: productsManager.itemCount,
  //     itemBuilder: (ctx, i) => Column(
  //       children: [
  //         UserProductListTile(
  //           productsManager.items[i],
  //         ),
  //         const Divider(),
  //       ],
  //     ),
  //   );
  // }

  Widget buildUserProductListView() {
    return Consumer<ProductsManager>(
      builder: (ctx, productsManager, child) {
        return ListView.builder(
          itemCount: productsManager.itemCount,
          itemBuilder: (ctx, i) => Column(
            children: [
              UserProductListTile(
                productsManager.items[i],
              ),
              const Divider(),
            ],
          ),
        );
      },
    );
  }

  // Widget buildAddButton() {
  //   return IconButton(
  //     icon: const Icon(Icons.add),
  //     onPressed: () {
  //       print('Go to edit product screen');
  //     },
  //   );
  // }

  Widget buildAddButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add),
      onPressed: () {
        Navigator.of(context).pushNamed(
          EditProductScreen.routeName,
        );
      },
    );
  }
}
//CK21V7K024