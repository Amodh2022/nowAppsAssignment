import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/data/model/product_model/product_model.dart';
import 'package:myapp/shared/sqflite/sql_helper.dart';

final cartProvider = StateNotifierProvider<CartNotifier, Map<String, int>>(
  (ref) {
    final notifier = CartNotifier();
    notifier.loadCartFromDB(); // 👈 Load from DB on startup
    return notifier;
  },
);

class CartNotifier extends StateNotifier<Map<String, int>> {
  CartNotifier() : super({});

  void add(Products product) async {
    final key = product.prodId ?? "";
    final current = state[key] ?? 0;
    final updated = {...state, key: current + 1};
    state = updated;

    await SqlHelper.insertToCart(product, updated[key]!);
  }

  void remove(Products product) async {
    final key = product.prodId ?? "";
    final current = state[key] ?? 0;
    if (current > 0) {
      final updated = {...state, key: current - 1};
      state = updated;

      await SqlHelper.insertToCart(product, updated[key]!);
    }
  }

  void loadCartFromDB() async {
    final cartItems = await SqlHelper.getCartProducts();
    final cartMap = <String, int>{};
    for (var item in cartItems) {
      cartMap[item['product_id']] = item['quantity'];
    }
    state = cartMap;
  }

  void clearCart() async {
    await SqlHelper.clearCart();
    state = {};
  }
}
