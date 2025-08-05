import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/data/model/product_model/product_model.dart';
import 'package:myapp/features/presentation/product_screen/provider/cart_provider.dart';

class CheckoutScreen extends ConsumerWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider);
    final notifier = ref.read(cartProvider.notifier);

    if (cart.isEmpty) {
      return const Scaffold(body: Center(child: Text("Cart is empty")));
    }

    // Dummy products list — in real use, fetch from local DB or original provider
    final productMap = <String, Products>{}; // map of prodId -> Products

    double total = 0;
    final items = cart.entries.map((entry) {
      final product = productMap[entry.key];
      final qty = entry.value;
      final price = double.tryParse(product?.prodMrp ?? "0") ?? 0;
      total += qty * price;

      return ListTile(
        title: Text(product?.prodName ?? "Unknown"),
        subtitle: Text("Qty: $qty"),
        trailing: Text("₹ ${(qty * price).toStringAsFixed(2)}"),
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Column(
        children: [
          Expanded(child: ListView(children: items)),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text("Total: ₹ ${total.toStringAsFixed(2)}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    notifier.clearCart();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Order placed!")));
                    Navigator.pop(context);
                  },
                  child: const Text("Place Order"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
