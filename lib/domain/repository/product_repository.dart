
import 'package:myapp/data/model/product_model/product_model.dart';

abstract class ProductRepository {
  Future<List<Products>> getProducts({required int page, required int limit});
}
