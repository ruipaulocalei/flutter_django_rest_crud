import 'dart:convert';

import 'package:flutter_crud_rest/models/product.dart';

List<Product> parseProduct(String responseBody) {
  var l = jsonDecode(responseBody) as List<dynamic>;
  var products = l.map((product) => Product.fromJson(product)).toList();
  return products;
}