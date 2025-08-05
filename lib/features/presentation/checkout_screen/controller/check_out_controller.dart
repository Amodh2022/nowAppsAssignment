import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/model/retail_checkin_model/retail_checkin_model.dart';
import '../../../../routing/app_routes.dart';
import '../../../../shared/sqflite/sql_helper.dart';

class CheckOutController{
  Future<void> checkout(BuildContext context) async {
    final db = await SqlHelper.database;

    // 1. Get active check-in
    final activeCheckIn = await getActiveCheckIn();
    if (activeCheckIn == null) {
      throw Exception("No active check-in found.");
    }

    await db.update(
      'checkins',
      {'is_active': 0},
      where: 'retailer_id = ?',
      whereArgs: [activeCheckIn.retailerId],
    );

    await db.delete('cart_products');

    if (context.mounted) {
      context.push(AppRoutes.initialPage); // or your home route
    }
  }
  Future<RetailCheckIn?> getActiveCheckIn() async {
    final db = await SqlHelper.database;

    final result = await db.query(
      'checkins',
      where: 'is_active = ?',
      whereArgs: [1],
      limit: 1,
    );

    if (result.isNotEmpty) {
      return RetailCheckIn.fromMap(result.first);
    }
    return null;
  }

}

final checkOutController=Provider<CheckOutController>((ref)=>CheckOutController());