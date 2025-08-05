import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/features/presentation/checkout_screen/controller/check_out_controller.dart';
import 'package:myapp/features/presentation/product_screen/provider/cart_provider.dart';
import 'package:myapp/shared/provider/checkin_provider.dart';
import '../retailer_home_screen/controller/retail_controller.dart';

class CheckoutScreen extends ConsumerStatefulWidget {
  const CheckoutScreen({super.key});

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cart = ref.watch(cartProvider);
    final notifier = ref.read(cartProvider.notifier);
    final controller = ref.read(checkOutController);

    if (cart.isEmpty) {
      return const Scaffold(
        body: Center(
          child: Text(
            "🛒 Your cart is empty",
            style: TextStyle(fontSize: 18),
          ),
        ),
      );
    }

    double total = 0;
    final items = cart.entries.map((entry) {
      final product = entry.value.$1;
      final qty = entry.value.$2;
      final price = double.tryParse(product.prodRkPrice ?? "0") ?? 0;
      final itemTotal = qty * price;
      total += itemTotal;

      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        child: ListTile(
          contentPadding: const EdgeInsets.all(12),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              product.prodImage?.medium ?? '',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const Icon(Icons.image_not_supported),
            ),
          ),
          title: Text(product.prodName ?? '', style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Qty: $qty"),
          trailing: Text("₹ ${itemTotal.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        ),
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: ListView(children: items)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, -2)),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Total:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                    Text("₹ ${total.toStringAsFixed(2)}",
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      notifier.clearCart();
                      ref.invalidate(combinedRetailDataProvider);
                      ref.read(checkInStepProvider.notifier).updateStep(1);
                      controller.checkout(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Order placed!")),
                      );
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.check_circle_outline),
                    label: const Text("Place Order"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
