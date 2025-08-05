

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:myapp/data/model/retail_checkin_model/retail_checkin_model.dart';
import 'package:myapp/data/model/retail_model/retail_model.dart';
import '../../../../../shared/sqflite/sql_helper.dart';
import '../../../../data/repositories/product_repo_impl.dart';

class RetailHomeController {

Future<List<Retailer>> fetchRetailers() async {
  final db = await SqlHelper.database;
  final List<Map<String, dynamic>> maps = await db.query('retailers');

  return compute(parseRetailers, maps);
}
List<Retailer> parseRetailers(List<Map<String, dynamic>> maps) {
  return maps.map((map) => Retailer.fromMap(map)).toList();
}

  Future<void> refreshRetailers(WidgetRef ref, ProviderBase provider) async {
    ref.invalidate(provider);
  }

  Future<RetailCheckIn?> getActiveCheckIn() async {
    final db = await SqlHelper.database;
    final result = await db.query(
      'checkins',
      where: 'is_active = ?',
      whereArgs: [1],
      limit: 1,
    );

    if (result.isEmpty) return null;
    return RetailCheckIn.fromMap(result.first);
  }

  Future<void> checkInToRetailer(int retailerId) async {
    final db = await SqlHelper.database;

    final existing = await getActiveCheckIn();
    if (existing != null && existing.retailerId != retailerId) {
      throw Exception("Already checked in at retailer ID ${existing.retailerId}");
    }

    if (existing != null && existing.retailerId == retailerId) {
      return;
    }

    final position = await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(accuracy: LocationAccuracy.high),
    );

  
    final checkIn = RetailCheckIn(
      retailerId: retailerId,
      lat: position.latitude,
      long: position.longitude,
      checkInTime: DateTime.now(),
      isActive: true,
    );

    await db.insert('checkins', checkIn.toMap());
  }

   Future<void> checkOut() async {
    final db = await SqlHelper.database;
    await db.update(
      'checkins',
      {'is_active': 0},
      where: 'is_active = ?',
      whereArgs: [1],
    );
  }
Future<void> loadProductsIntoLocalDb(WidgetRef ref) async {
  try {
    final repo = ref.read(productRepositoryProvider);

    final response = await repo.getProducts(page: 1, limit: 1000);

    await SqlHelper.clearProducts();
    await SqlHelper.insertProducts(response);
    debugPrint(" Products saved to local DB: ${response.length}");
  } catch (e) {
    debugPrint(" Failed to sync products: $e");
  }
}

}

final retailHomeControllerProvider = Provider((ref) => RetailHomeController());


final retailerListProvider = FutureProvider<List<Retailer>>((ref) async {
  final controller = ref.read(retailHomeControllerProvider);
  return controller.fetchRetailers();
});

final combinedRetailDataProvider = FutureProvider.autoDispose<({
List<Retailer> retailers,
RetailCheckIn? checkIn,
})>((ref) async {
  final controller = ref.read(retailHomeControllerProvider);
  final retailers = await controller.fetchRetailers();
  final checkIn = await controller.getActiveCheckIn();
  return (retailers: retailers, checkIn: checkIn);
});
