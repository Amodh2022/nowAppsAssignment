import 'package:myapp/data/model/product_model/product_model.dart';

List<Products> parseProducts(dynamic json) {
  final product = Product.fromJson(json as Map<String, dynamic>);
  return product.data?.products ?? [];
}
