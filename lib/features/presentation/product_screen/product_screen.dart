import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/presentation/product_screen/provider/product_provider.dart';
import 'package:myapp/features/presentation/product_screen/provider/cart_provider.dart';
import 'package:myapp/routing/app_routes.dart';

class ProductScreen extends ConsumerWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productList = ref.watch(paginatedProductProvider);
    final notifier = ref.read(paginatedProductProvider.notifier);
    final cart = ref.watch(cartProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
         context.go(AppRoutes.checkoutScreen);
          }, icon:  Icon(Icons.shopping_cart, size: 30),),
         
          const SizedBox(width: 10)
        ],
        title: const Text('Products')),
      body: productList.when(
        data: (products) => NotificationListener<ScrollNotification>(
          onNotification: (scroll) {
            if (scroll.metrics.pixels == scroll.metrics.maxScrollExtent) {
              notifier.fetchMoreProducts();
            }
            return false;
          },
          child: GridView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 260,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final product = products[index];
              final quantity = cart[product.prodId ?? ""] ?? 0;

              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                        child: Image.network(
                          product.prodImage?.medium ?? '',
                          fit: BoxFit.cover,
                          errorBuilder: (context, _, __) => const Icon(Icons.image_not_supported),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.prodName ?? '', style: const TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 4),
                          Text("₹ ${product.prodRkPrice ?? 'N/A'}"),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () => ref.read(cartProvider.notifier).remove(product),
                                icon: const Icon(Icons.remove_circle_outline),
                              ),
                              Text('$quantity'),
                              IconButton(
                                onPressed: () => ref.read(cartProvider.notifier).add(product),
                                icon: const Icon(Icons.add_circle_outline),
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
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
