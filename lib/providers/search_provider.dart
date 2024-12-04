import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:superlabs_task/APIs/product_api.dart';

import '../models/product_model.dart';

class SearchProvider extends ChangeNotifier {
  List<Product> _searchResults = [];
  bool _isSearching = false;
  TextEditingController searchController = SearchController();
  Timer? typingStopTimer;
  final int _pageNumber = 1;

  List<Product> get searchResults => _searchResults;
  bool get isSearching => _isSearching;

  Future<void> searchProducts(String query) async {
    _isSearching = true;
    notifyListeners();

    try {
      // final response = await ProductApi().searchProducts(query: query);
      final response =
          await ProductApi().getAllProducts(pageNumber: _pageNumber);
      if (response.statusCode == 200) {
        _searchResults = (response.data['data'] as List)
            .map((item) => Product.fromJson(item))
            .toList();
      } else {
        Fluttertoast.showToast(msg: 'Something went wrong.');
      }
    } catch (e) {
      print('Error searching products: $e');
    }

    _isSearching = false;
    notifyListeners();
  }

  //added debouncing for 1 second to avoid unwanted API calls
  onChangeSearchHandler({required String query}) {
    const duration = Duration(
      seconds: 1,
    );
    if (typingStopTimer != null) {
      typingStopTimer!.cancel();
    }
    typingStopTimer = Timer(
      duration,
      () => searchProducts(query),
    );
  }

  void clearSearchField() {
    _searchResults.clear();
    searchController.clear();
  }
}
