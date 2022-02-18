import 'dart:convert';
import 'package:furniture_app/models/product.dart';
import 'package:http/http.dart' as https;

Future<List<Product>> fetchProducts() async {
  https.Response response = await https.get(
      Uri.parse("https://5f210aa9daa42f001666535e.mockapi.io/api/products"));

  if (response.statusCode == 200) {
    //If the server did return a 200 ok response
    //then parse the  JSON
    List<Product> products = (json.decode(response.body) as List)
        .map((data) => Product.fromJson(data))
        .toList();

    return products;
  } else {
    //If the sever did not return a 200 ok resonse,
    //then throw an exception
    throw Exception('Failed to load');
  }
}
