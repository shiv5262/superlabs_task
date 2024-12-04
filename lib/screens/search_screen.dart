import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/search_provider.dart';
import '../widgets/product_tile.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            searchProvider.clearSearchField();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: TextField(
          autofocus: true,
          decoration: const InputDecoration(hintText: 'Search products...'),
          onChanged: (query) =>
              searchProvider.onChangeSearchHandler(query: query),
        ),
      ),
      body: searchProvider.isSearching
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
              ),
              itemCount: searchProvider.searchResults.length,
              itemBuilder: (context, index) {
                if (index == searchProvider.searchResults.length - 4) {
                  // searchProvider.loadMoreProducts();
                }

                return ProductTile(
                  product: searchProvider.searchResults[index],
                );
              }),
    );
  }
}
