import 'package:flutter/foundation.dart';
import 'package:flutter_crud_rest/models/product.dart';
import 'package:flutter_crud_rest/network/api_request.dart';
import 'package:flutter_crud_rest/utils/api_constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

abstract class ProductProvider {
  static final provider = FutureProvider<List<Product>>((ref) async {
    final url = Uri.http('$mainUrl', '$productUrl');
    final response = await http.get(url);
    if (response.statusCode == 200)
      return compute(parseProduct, response.body);
    else if (response.statusCode == 404)
      throw Exception('Not Found');
    else {
      throw Exception('Cannot get products');
    }
  });
}