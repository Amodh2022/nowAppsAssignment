import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../routing/app_routes.dart';
import '../../../shared/provider/checkin_provider.dart';
import 'controller/retail_controller.dart';

class RetailerHomeScreen extends ConsumerStatefulWidget {
  const RetailerHomeScreen({super.key});

  @override
  ConsumerState<RetailerHomeScreen> createState() => _RetailerHomeScreenState();
}

class _RetailerHomeScreenState extends ConsumerState<RetailerHomeScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((call){
      ref.read(checkInStepProvider.notifier).updateStep(1);
      ref.read(retailHomeControllerProvider).loadProductsIntoLocalDb(ref);
    });

  }


  @override
  Widget build(BuildContext context) {
    final asyncData = ref.watch(combinedRetailDataProvider);
    final controller = ref.read(retailHomeControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Retailers"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(checkInStepProvider.notifier).updateStep(2);
          context.go(AppRoutes.retailerForm);
        },
        child: const Icon(Icons.add),
      ),
      body: asyncData.when(
        data: (data) {
          final retailers = data.retailers;
          final activeCheckIn = data.checkIn;

          if (retailers.isEmpty) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.store_mall_directory, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text("No Retailers Available", style: TextStyle(fontSize: 16)),
                ],
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: retailers.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final retailer = retailers[index];
              final isActive = activeCheckIn?.retailerId == retailer.id;
              final isBlocked = activeCheckIn != null && !isActive;

              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  leading: const Icon(Icons.store, size: 36),
                  title: Text(
                    retailer.name,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: Row(
                    children: [
                      const Icon(Icons.location_on, size: 16, color: Colors.grey),
                      const SizedBox(width: 4),
                      Expanded(child: Text(retailer.address)),
                    ],
                  ),
                  trailing: ElevatedButton(
                    onPressed: isBlocked
                        ? null
                        : () async {
                      try {
                        await controller.checkInToRetailer(retailer.id!);
                        ref.read(checkInStepProvider.notifier).updateStep(3);
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Checked in to ${retailer.name}')),
                          );
                          await context.push(AppRoutes.productScreen);
                          ref.refresh(combinedRetailDataProvider);
                        }
                      } catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Error: ${e.toString()}')),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isActive
                          ? Colors.green
                          : isBlocked
                          ? Colors.grey
                          : Theme.of(context).primaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                    child: Text(
                      isActive
                          ? 'Checked In'
                          : isBlocked
                          ? 'Blocked'
                          : 'Check In',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text("Error: $e")),
      ),
    );
  }
}
