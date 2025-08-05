import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/presentation/product_screen/provider/product_provider.dart';
import 'package:myapp/features/presentation/product_screen/provider/cart_provider.dart';
import 'package:myapp/routing/app_routes.dart';
import 'package:myapp/shared/provider/checkin_provider.dart';

class ProductScreen extends ConsumerStatefulWidget {
  const ProductScreen({super.key});

  @override
  ConsumerState<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends ConsumerState<ProductScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(checkInStepProvider.notifier).updateStep(3);
  }

  @override
  Widget build(BuildContext context) {
    final productList = ref.watch(localProductProvider);
    final cart = ref.watch(cartProvider);
    final cartNotifier = ref.read(cartProvider.notifier);
    print("productList$productList");

    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, size: 30),
            onPressed: () => context.go(AppRoutes.checkoutScreen),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: productList.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error loading products: $e')),
        data: (products) {
          if (products.isEmpty) {
            return const Center(child: Text('No products available'));
          }

          return GridView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 310,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              final product = products[index];
              final quantity = cart[product.prodId ?? ""]?.$2 ?? 0;

              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AspectRatio(
                      aspectRatio: 1.0,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.network(
                          product.prodImage?.medium ?? '',
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) =>
                          const Center(child: Icon(Icons.image_not_supported)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.prodName ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(height: 4),
                          Text('₹ ${product.prodRkPrice ?? "N/A"}'),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove_circle_outline),
                                onPressed: () => cartNotifier.remove(product),
                              ),
                              Text('$quantity'),
                              IconButton(
                                icon: const Icon(Icons.add_circle_outline),
                                onPressed: () => cartNotifier.add(product),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

}

class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _QuantityButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Icon(icon, size: 22, color: Colors.blueAccent),
      onPressed: onPressed,
    );
  }
}
