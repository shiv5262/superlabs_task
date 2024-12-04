import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_provider.dart';
import '../widgets/product_tile.dart';
import 'search_screen.dart';
// import 'cart_screen.dart';
// import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Commerce App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SearchScreen()),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},

            // onPressed: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (_) => CartScreen()),
            // ),
          ),
        ],
      ),
      body: productProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
              ),
              itemCount: productProvider.products.length,
              itemBuilder: (context, index) {
                if (index == productProvider.products.length - 4) {
                  productProvider.loadMoreProducts();
                }

                return ProductTile(
                  product: productProvider.products[index],
                );
              }),
    );
  }
}
