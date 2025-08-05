import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/data/model/product_model/product_model.dart';
import 'package:myapp/shared/sqflite/sql_helper.dart';

final cartProvider = StateNotifierProvider<CartNotifier, Map<String, (Products, int)>>(
      (ref) => CartNotifier(),
);

class CartNotifier extends StateNotifier<Map<String, (Products, int)>> {
  CartNotifier() : super({}) {
    _loadCartFromDb();
  }

  void add(Products product) {
    final key = product.prodId ?? "";
    final current = state[key]?.$2 ?? 0;
    final updated = {...state, key: (product, current + 1)};
    state = updated;
    SqlHelper.insertToCart(product, updated[key]!.$2);
  }

  void remove(Products product) {
    final key = product.prodId ?? "";
    final current = state[key]?.$2 ?? 0;
    if (current > 0) {
      final updated = {...state, key: (product, current - 1)};
      state = updated;
      SqlHelper.insertToCart(product, updated[key]!.$2);
    }
  }

  void clearCart() {
    state = {};
    SqlHelper.clearCart();
  }

  Future<void> _loadCartFromDb() async {
    final db = await SqlHelper.database;
    final List<Map<String, dynamic>> rows = await db.query('cart_products');

    final map = <String, (Products, int)>{};

    for (var row in rows) {
      final product = Products(
        prodId: row['product_id'].toString(),
        prodName: row['prod_name'],
        prodMrp: row['price'].toString(),
        prodRkPrice: row['prod_rk_price']
      );
      final quantity = row['quantity'] as int? ?? 0;
      map[product.prodId ?? ""] = (product, quantity);
    }

    state = map;
  }

}

