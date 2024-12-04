import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../utils/api_constants.dart';

class ProductApi {
  Dio dio = Dio();

  Future getAllProducts({required int pageNumber}) async {
    try {
      var url = ApiConstants.allProducts
          .replaceFirst('{pageNumber}', pageNumber.toString());
      var response = await dio.get(
        url,
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! <= 500;
          },
        ),
      );
      return response;
    } on DioException catch (dioError) {
      debugPrint(dioError.message);
    }
  }

  Future searchProducts({required String query}) async {
    try {
      var response = await dio.get(
        ApiConstants.searchProducts,
        queryParameters: {"q": query},
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! <= 500;
          },
        ),
      );
      return response;
    } on DioException catch (dioError) {
      debugPrint(dioError.message);
    }
  }
}
