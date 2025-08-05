import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/presentation/retailer_home_screen/controller/retail_controller.dart';
import 'package:myapp/routing/app_routes.dart';

class RetailerHomeScreen extends ConsumerWidget {
  const RetailerHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(combinedRetailDataProvider);

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        context.go(AppRoutes.retailerForm);
      }),
      appBar: AppBar(title: const Text("Retailers")),
      body: asyncData.when(
        data: (data) {
          final retailers = data.retailers;
          final activeCheckIn = data.checkIn;

          return retailers.isNotEmpty?ListView.builder(
            itemCount: retailers.length,
            itemBuilder: (context, index) {
              final retailer = retailers[index];
              final isActive = activeCheckIn?.retailerId == retailer.id;
              final isBlocked = activeCheckIn != null && !isActive;

              return ListTile(
                title: Text(retailer.name),
                subtitle: Text(retailer.address),
                trailing: ElevatedButton(
                  onPressed: isBlocked
                      ? null
                      : () async {
                          try {
                            context.go(AppRoutes.productScreen);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Checked in to ${retailer.name}')),
                            );
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(e.toString())),
                            );
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isActive ? Colors.green : null,
                  ),
                  child: Text(
                    isActive
                        ? 'Checked In'
                        : isBlocked
                            ? 'Blocked'
                            : 'Check In',
                  ),
                ),
              );
            },
          ):Center(
            child: Text("No Retailers Available"),
          );
        },
        loading: () => const Center(child: Text("Loading...")),
        error: (e, _) => Center(child: Text("Error: $e")),
      ),
    );
  }
}
