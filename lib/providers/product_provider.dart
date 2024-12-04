import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:superlabs_task/APIs/product_api.dart';

import '../models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> _products = [];
  bool _isLoading = true;
  int pageNumber = 1;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  ProductProvider() {
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      final response =
          await ProductApi().getAllProducts(pageNumber: pageNumber);
      if (response.statusCode == 200) {
        _products = (response.data['data'] as List)
            .map((item) => Product.fromJson(item))
            .toList();
      } else {
        Fluttertoast.showToast(msg: 'Something went wrong.');
      }
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      print('Error fetching products: $e');
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadMoreProducts() async {
    try {
      pageNumber++;
      final response = await ProductApi().getAllProducts(
        pageNumber: pageNumber,
      );
      if (response.statusCode == 200) {
        var productList = (response.data['data'] as List)
            .map((item) => Product.fromJson(item))
            .toList();
        _products.addAll(productList);
      } else {
        Fluttertoast.showToast(msg: 'Something went wrong.');
      }
      notifyListeners();
    } catch (e) {
      print('Error fetching products: $e');
      notifyListeners();
    }
  }
}
